import { useState, type HTMLAttributes, type ReactNode } from "react";
import { Command, Eye, MoreHorizontal, Sparkles } from "lucide-react";
import { CharacterMorph } from "../../components/ui/character-morph";
import { GlitchText } from "../../components/ui/glitch-text";
import { GooeyText } from "../../components/ui/gooey-text-morphing";
import { HighlightText } from "../../components/ui/highlight-text";
import { InfiniteRibbon } from "../../components/ui/infinite-ribbon";
import { NumberCounter } from "../../components/ui/number-counter";
import { LiquidMetalButton } from "../../components/ui/liquid-metal-button";
import { MorphingText } from "../../components/ui/text-morphing";
import { RainbowButton } from "../../components/ui/rainbow-button";
import { RotatingText } from "../../components/ui/rotate-text";
import { TypewriterText } from "../../components/ui/typewritter-text";
import { VelocityMorph } from "../../components/ui/velocity-morph";
import { Button } from "../../components/ui/button";

const componentGroups = [
  { name: "Buttons", items: ["button", "liquid-metal-button", "rainbow-button"] },
  { name: "Inputs", items: ["ai-prompt-box", "animated-theme-toggle", "calender", "command-palette", "date-wheel-picker", "feedback-widget", "segmented-button"] },
  { name: "Navigation", items: ["dock", "file-tree", "vercel-tabs"] },
  { name: "Surfaces", items: ["animated-table", "bento-grid", "code-block", "phone-card"] },
  { name: "Feedback", items: ["animated-toast", "animated-tooltip"] },
  { name: "Creative", items: ["animated-beam", "expanded-map", "github-contributors", "github-star", "hover-preview", "image-comparison", "image-sphere", "magnetic", "morphing-cursor", "video-player"] },
  { name: "Text animations", items: ["character-morph", "falling-text", "glitch-text", "gooey-text-morphing", "highlight-text", "infinite-ribbon", "number-counter", "rotate-text", "scroll-text", "shutter-text", "text-morphing", "typewritter-text", "velocity-morph"] },
] as const;

const allJolyIds = componentGroups.flatMap((group) => group.items);

function Mark({ id, children, className = "", ...props }: { id: string; children: ReactNode; className?: string } & HTMLAttributes<HTMLDivElement>) {
  return <div data-joly-component={id} className={className} {...props}>{children}</div>;
}

function StatusPill({ children }: { children: ReactNode }) {
  return <span className="status-pill status-blue"><i />{children}</span>;
}

function LiveJolyPreview({ id, index, onToast }: { id: string; index: number; onToast: (message: string) => void }) {
  const words = ["WUKONG", "ROM READY"];
  if (id === "button") return <Button onClick={() => onToast("Joly Button tapped.")}>Button</Button>;
  if (id === "liquid-metal-button") return <LiquidMetalButton label="Create build" onClick={() => onToast("Liquid Metal Button tapped.")} />;
  if (id === "rainbow-button") return <RainbowButton onClick={() => onToast("Rainbow Button tapped.")}>Open showcase <Sparkles size={14} /></RainbowButton>;
  if (id === "character-morph") return <CharacterMorph texts={words} className="lab-live-text" />;
  if (id === "glitch-text") return <GlitchText words={["RECOVER", "VERIFY"]} className="lab-live-text" />;
  if (id === "gooey-text-morphing") return <GooeyText texts={words} className="lab-live-text" textClassName="lab-live-text" />;
  if (id === "highlight-text") return <HighlightText color="secondary" className="lab-live-text">ROM READY</HighlightText>;
  if (id === "infinite-ribbon") return <InfiniteRibbon repeat={4} duration={12} className="lab-ribbon"><span>WUKONG · READY · </span></InfiniteRibbon>;
  if (id === "number-counter") return <NumberCounter value={42} suffix=" / 42" className="lab-live-text" />;
  if (id === "rotate-text") return <RotatingText words={words} className="lab-live-text" />;
  if (id === "text-morphing") return <MorphingText words={words} className="lab-live-text" />;
  if (id === "typewritter-text") return <TypewriterText words={words} className="lab-live-text" />;
  if (id === "velocity-morph") return <VelocityMorph texts={words} className="lab-live-text" />;
  if (id === "command-palette") return <div className="lab-command"><Command size={18} /><span>Search commands…</span><kbd>⌘K</kbd></div>;
  if (id === "animated-table") return <div className="lab-lines"><i /><i /><i /><i /></div>;
  if (id === "image-sphere") return <div className="sphere-demo"><div /><div /><div /></div>;
  if (id === "morphing-cursor") return <div className="cursor-demo"><span className="mouse-cursor-icon" aria-hidden="true">↖</span><span>move</span></div>;
  return <div className="lab-shape"><div className={`shape shape-${index % 4}`} /><span>{id.replaceAll("-", " ")}</span></div>;
}

function LabCard({ id, index, onToast }: { id: string; index: number; onToast: (message: string) => void }) {
  const title = id.split("-").map((item) => item.charAt(0).toUpperCase() + item.slice(1)).join(" ");
  return <Mark id={id} className={`lab-card lab-${index % 5}`}><div className="lab-card-head"><span className="lab-index">{String(index + 1).padStart(2, "0")}</span><span className="lab-name">{title}</span><button onClick={() => onToast(`${title} đã được focus.`)}><MoreHorizontal size={15} /></button></div><div className="lab-preview"><LiveJolyPreview id={id} index={index} onToast={onToast} /></div><div className="lab-card-foot"><span>Official registry source</span><button onClick={() => onToast(`${title}: JolyUI source active.`)}><Eye size={14} /> Preview</button></div></Mark>;
}

export default function Lab({ onToast }: { onToast: (message: string) => void }) {
  const [filter, setFilter] = useState("All");
  const groups = filter === "All" ? componentGroups : componentGroups.filter((group) => group.name === filter);
  return <div className="screen lab-screen"><div className="screen-heading"><div><span className="eyebrow">REGISTRY EXPLORER / JOLYUI</span><h1>Component <span>Lab</span></h1><p>42 registry entries trong visual system gốc JolyUI; component phù hợp được render trực tiếp, phần còn lại dùng fixture an toàn không gọi mạng.</p></div><StatusPill>{allJolyIds.length} / {allJolyIds.length} covered</StatusPill></div><div className="lab-toolbar"><div className="lab-filters"><button className={filter === "All" ? "active" : ""} onClick={() => setFilter("All")}>All</button>{componentGroups.map((group) => <button key={group.name} className={filter === group.name ? "active" : ""} onClick={() => setFilter(group.name)}>{group.name}</button>)}</div><span><span className="live-dot" /> local fixture</span></div>{groups.map((group) => <section className="lab-group" key={group.name}><div className="lab-group-title"><h2>{group.name}</h2><span>{group.items.length} components</span></div><div className="lab-grid">{group.items.map((id, index) => <LabCard key={id} id={id} index={index} onToast={onToast} />)}</div></section>)}</div>;
}
