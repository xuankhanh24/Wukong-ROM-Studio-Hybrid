import { useEffect, useId, useRef, type MouseEvent as ReactMouseEvent, type PointerEvent as ReactPointerEvent } from "react";
import { ClipboardList, Library, Settings2, UserRound, WandSparkles, type LucideIcon } from "lucide-react";
import type { View } from "../../state/app-state";
import { hapticSelection } from "../../telegram/adapter";

type DockItem = { view: View; label: string; icon: LucideIcon };

const items: DockItem[] = [
  { view: "studio", label: "Studio", icon: WandSparkles },
  { view: "jobs", label: "Jobs", icon: ClipboardList },
  { view: "profile", label: "Profile", icon: UserRound },
  { view: "catalog", label: "Catalog", icon: Library },
  { view: "system", label: "System", icon: Settings2 },
];

export function nearestLiquidSlot(value: number): number {
  return [0, 1, 2, 3, 4].reduce((best, slot) => Math.abs(slot - value) < Math.abs(best - value) ? slot : best, 0);
}

export function easeOutQuint(value: number): number {
  return 1 - Math.pow(1 - value, 5);
}

export function dockShellPath(width: number): string {
  const height = 96;
  const bodyTop = 32;
  const bodyBottom = height;
  const capRadius = Math.min(42, width / 5);
  const capCenterY = 45;
  const capShoulder = capRadius + 10;
  const capArcX = capRadius * Math.cos(Math.PI / 6);
  const capArcY = capCenterY - capRadius / 2;
  const capBlendHandle = 7;
  const capTangentX = capBlendHandle / 2;
  const capTangentY = capBlendHandle * Math.sqrt(3) / 2;
  const sideRadius = (bodyBottom - bodyTop) / 2;
  const center = width / 2;
  return [
    `M ${sideRadius} ${bodyTop}`,
    `H ${center - capShoulder}`,
    `C ${center - capRadius - 4} ${bodyTop} ${center - capArcX - capTangentX} ${capArcY + capTangentY} ${center - capArcX} ${capArcY}`,
    `A ${capRadius} ${capRadius} 0 0 1 ${center + capArcX} ${capArcY}`,
    `C ${center + capArcX + capTangentX} ${capArcY + capTangentY} ${center + capRadius + 4} ${bodyTop} ${center + capShoulder} ${bodyTop}`,
    `H ${width - sideRadius}`,
    `A ${sideRadius} ${sideRadius} 0 0 1 ${width - sideRadius} ${bodyBottom}`,
    `H ${sideRadius}`,
    `A ${sideRadius} ${sideRadius} 0 0 1 ${sideRadius} ${bodyTop}`,
    "Z",
  ].join(" ");
}

const reducedMotion = () => window.matchMedia?.("(prefers-reduced-motion: reduce)").matches ?? false;

export function LiquidDock({ view, onNavigate }: { view: View; onNavigate: (view: View) => void }) {
  const navRef = useRef<HTMLElement>(null);
  const shellRef = useRef<SVGSVGElement>(null);
  const clipPathRef = useRef<SVGPathElement>(null);
  const rimPathRef = useRef<SVGPathElement>(null);
  const position = useRef(Math.max(0, items.findIndex((item) => item.view === view)));
  const animationFrame = useRef(0);
  const pointerId = useRef<number | null>(null);
  const startX = useRef(0);
  const startPosition = useRef(0);
  const lastX = useRef(0);
  const lastTime = useRef(0);
  const dragged = useRef(false);
  const velocity = useRef(0);
  const pressedButton = useRef<HTMLButtonElement | null>(null);
  const suppressClick = useRef(false);
  const suppressTimer = useRef(0);
  const shiftingTimer = useRef(0);
  const clipId = `liquid-dock-${useId().replace(/:/g, "")}`;

  const setLiquidPosition = (value: number, _velocity = 0, pressed = false) => {
    const next = Math.max(0, Math.min(4, Number(value) || 0));
    position.current = next;
    navRef.current?.style.setProperty("--liquid-position", String(next));
    navRef.current?.style.setProperty("--liquid-offset", `${next * 100}%`);
    navRef.current?.style.setProperty("--liquid-press", pressed ? ".97" : "1");
  };

  const updateDockShellPath = () => {
    const width = Math.max(1, navRef.current?.getBoundingClientRect().width || 1);
    const path = dockShellPath(width);
    shellRef.current?.setAttribute("viewBox", `0 0 ${width} 96`);
    clipPathRef.current?.setAttribute("d", path);
    rimPathRef.current?.setAttribute("d", path);
  };

  const animateLiquidPosition = (target: number) => {
    cancelAnimationFrame(animationFrame.current);
    if (reducedMotion()) { setLiquidPosition(target); return; }
    const start = position.current;
    const distance = target - start;
    const duration = 360;
    const startedAt = performance.now();
    const tick = (now: number) => {
      const progress = Math.min(1, (now - startedAt) / duration);
      setLiquidPosition(start + distance * easeOutQuint(progress));
      if (progress >= 1) { setLiquidPosition(target); return; }
      animationFrame.current = requestAnimationFrame(tick);
    };
    animationFrame.current = requestAnimationFrame(tick);
  };

  useEffect(() => {
    updateDockShellPath();
    const observer = "ResizeObserver" in window ? new ResizeObserver(updateDockShellPath) : null;
    if (navRef.current) observer?.observe(navRef.current);
    return () => { observer?.disconnect(); cancelAnimationFrame(animationFrame.current); window.clearTimeout(suppressTimer.current); window.clearTimeout(shiftingTimer.current); };
  }, []);

  useEffect(() => {
    const target = Math.max(0, items.findIndex((item) => item.view === view));
    navRef.current?.classList.toggle("profile-active", view === "profile");
    navRef.current?.classList.remove("is-shifting");
    if (!reducedMotion()) {
      void navRef.current?.offsetWidth;
      navRef.current?.classList.add("is-shifting");
      shiftingTimer.current = window.setTimeout(() => navRef.current?.classList.remove("is-shifting"), 520);
    }
    animateLiquidPosition(target);
  }, [view]);

  const navigate = (slot: number) => {
    const item = items[slot];
    if (!item) return;
    hapticSelection();
    onNavigate(item.view);
  };

  const onPointerDown = (event: ReactPointerEvent<HTMLElement>) => {
    if (event.button !== 0 && event.pointerType !== "touch") return;
    cancelAnimationFrame(animationFrame.current);
    pointerId.current = event.pointerId;
    startX.current = lastX.current = event.clientX;
    lastTime.current = performance.now();
    startPosition.current = position.current;
    dragged.current = false;
    velocity.current = 0;
    pressedButton.current = (event.target as HTMLElement).closest("button[data-slot]");
    event.currentTarget.classList.add("is-pressed");
    event.currentTarget.setPointerCapture?.(event.pointerId);
    setLiquidPosition(startPosition.current, 0, true);
  };

  const onPointerMove = (event: ReactPointerEvent<HTMLElement>) => {
    if (event.pointerId !== pointerId.current) return;
    const now = performance.now();
    const tabWidth = Math.max(1, (event.currentTarget.clientWidth - 8) / 5);
    const delta = event.clientX - startX.current;
    if (Math.abs(delta) > 5) dragged.current = true;
    event.currentTarget.classList.toggle("profile-dragging", dragged.current && event.currentTarget.classList.contains("profile-active"));
    const instantaneous = ((event.clientX - lastX.current) / Math.max(8, now - lastTime.current)) * 16 / tabWidth;
    velocity.current = velocity.current * .6 + instantaneous * .4;
    setLiquidPosition(startPosition.current + delta / tabWidth, velocity.current, true);
    lastX.current = event.clientX;
    lastTime.current = now;
  };

  const finish = (event: ReactPointerEvent<HTMLElement>) => {
    if (event.pointerId !== pointerId.current) return;
    event.currentTarget.releasePointerCapture?.(event.pointerId);
    pointerId.current = null;
    event.currentTarget.classList.remove("is-pressed", "profile-dragging");
    const target = nearestLiquidSlot(position.current + Math.max(-.18, Math.min(.18, velocity.current * .08)));
    if (dragged.current) {
      const releasedPosition = position.current;
      suppressClick.current = true;
      navigate(target);
      setLiquidPosition(releasedPosition, velocity.current, true);
      animateLiquidPosition(target);
    } else {
      animateLiquidPosition(Math.max(0, items.findIndex((item) => item.view === view)));
    }
    window.clearTimeout(suppressTimer.current);
    suppressTimer.current = window.setTimeout(() => { suppressClick.current = false; }, 350);
  };

  const onClickCapture = (event: ReactMouseEvent<HTMLElement>) => {
    const targetButton = (event.target as HTMLElement).closest<HTMLButtonElement>("button[data-slot]") || pressedButton.current;
    if (suppressClick.current) {
      suppressClick.current = false;
      pressedButton.current = null;
      event.preventDefault();
      event.stopPropagation();
      return;
    }
    if (!targetButton) return;
    pressedButton.current = null;
    event.preventDefault();
    event.stopPropagation();
    navigate(Number(targetButton.dataset.slot || 0));
  };

  return (
    <div className="dock-wrap liquid-dock-wrap">
      <nav ref={navRef} className="dock liquid-dock" aria-label="Điều hướng chính" onClickCapture={onClickCapture} onPointerDown={onPointerDown} onPointerMove={onPointerMove} onPointerUp={finish} onPointerCancel={finish}>
        <svg ref={shellRef} className="dock-shell" aria-hidden="true" preserveAspectRatio="none">
          <defs><clipPath id={clipId} clipPathUnits="userSpaceOnUse"><path ref={clipPathRef} /></clipPath></defs>
          <path ref={rimPathRef} className="dock-rim" />
        </svg>
        <span className="liquid-surface" style={{ clipPath: `url(#${clipId})` }} aria-hidden="true" />
        <i className="liquid-lens" aria-hidden="true"><span /></i>
        {items.map((item, index) => {
          const Icon = item.icon;
          return <button key={item.view} type="button" data-slot={index} className={`${view === item.view ? "active" : ""} ${item.view === "profile" ? "dock-profile" : ""}`} aria-label={item.label} aria-current={view === item.view ? "page" : undefined}><Icon className="nav-icon" size={22} aria-hidden="true" /><span>{item.label}</span></button>;
        })}
      </nav>
    </div>
  );
}
