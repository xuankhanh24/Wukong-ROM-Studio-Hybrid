import { useEffect, useRef, type CSSProperties, type MouseEvent as ReactMouseEvent, type PointerEvent as ReactPointerEvent } from "react";
import type { AccountProfile, Language } from "../../api/types";
import type { View } from "../../state/app-state";
import { hapticSelection } from "../../telegram/adapter";
import { accountHue, accountInitials } from "../account-avatar";

type DockIconName = "studio" | "jobs" | "catalog" | "system";
type DockView = Exclude<View, "lab">;
type DockItem = { view: DockView; icon: DockIconName };

const items: DockItem[] = [
  { view: "studio", icon: "studio" },
  { view: "jobs", icon: "jobs" },
  { view: "profile", icon: "studio" },
  { view: "catalog", icon: "catalog" },
  { view: "system", icon: "system" },
];

function LegacyDockIcon({ name }: { name: DockIconName }) {
  if (name === "studio") return <><path d="M3.5 11.5 12 4l8.5 7.5M5.5 10.5V20h13v-9.5M9.5 20v-6h5v6" /></>;
  if (name === "jobs") return <><rect x="4" y="3" width="16" height="18" rx="3" /><path d="M8 8h8M8 12h8M8 16h5" /></>;
  if (name === "catalog") return <path d="M4 5.5A2.5 2.5 0 0 1 6.5 3H11v17H6.5A2.5 2.5 0 0 0 4 22V5.5ZM20 5.5A2.5 2.5 0 0 0 17.5 3H13v17h4.5A2.5 2.5 0 0 1 20 22V5.5Z" />;
  return <><circle cx="12" cy="12" r="3" /><path d="M19.4 15a1.7 1.7 0 0 0 .34 1.88l.06.06-2.86 2.86-.06-.06A1.7 1.7 0 0 0 15 19.4a1.7 1.7 0 0 0-1 .6 1.7 1.7 0 0 0-.4 1.1V21H9.55v-.1A1.7 1.7 0 0 0 8.5 19.4a1.7 1.7 0 0 0-1.88.34l-.06.06-2.86-2.86.06-.06A1.7 1.7 0 0 0 4.1 15a1.7 1.7 0 0 0-.6-1 1.7 1.7 0 0 0-1.1-.4H2.3V9.55h.1A1.7 1.7 0 0 0 4.1 8.5a1.7 1.7 0 0 0-.34-1.88l-.06-.06L6.56 3.7l.06.06A1.7 1.7 0 0 0 8.5 4.1a1.7 1.7 0 0 0 1-.6 1.7 1.7 0 0 0 .4-1.1v-.1h4.05v.1A1.7 1.7 0 0 0 15 4.1a1.7 1.7 0 0 0 1.88-.34l.06-.06 2.86 2.86-.06.06A1.7 1.7 0 0 0 19.4 8.5c.2.4.5.75.9 1 .32.2.7.3 1.1.3h.1v4.05h-.1a1.7 1.7 0 0 0-2 1.15Z" />;</>;
}

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

export function LiquidDock({ view, onNavigate, account, language = "vi" }: { view: View; onNavigate: (view: View) => void; account?: AccountProfile | null; language?: Language }) {
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
  const clipId = "dock-shell-clip";
  const labels = language === "vi"
    ? { studio: "Studio", jobs: "Jobs", profile: "Mở hồ sơ", catalog: "Thư viện", system: "Hệ thống" }
    : { studio: "Studio", jobs: "Jobs", profile: "Open profile", catalog: "Library", system: "System" };

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

  const navigate = (slot: number, smooth = true) => {
    const item = items[slot];
    if (!item) return;
    if (smooth) hapticSelection();
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
      navigate(target, false);
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
      <nav ref={navRef} className="bottom-nav liquid-dock" aria-label="Workspace navigation" onClickCapture={onClickCapture} onPointerDown={onPointerDown} onPointerMove={onPointerMove} onPointerUp={finish} onPointerCancel={finish}>
        <svg ref={shellRef} className="dock-shell" aria-hidden="true" preserveAspectRatio="none">
          <defs><clipPath id={clipId} clipPathUnits="userSpaceOnUse"><path id="dock-shell-path" ref={clipPathRef} /></clipPath></defs>
          <path id="dock-rim-path" ref={rimPathRef} className="dock-rim" />
        </svg>
        <span className="liquid-surface" style={{ clipPath: `url(#${clipId})` }} aria-hidden="true" />
        <i className="liquid-lens" aria-hidden="true"><span /></i>
        {items.map((item, index) => {
          const label = labels[item.view];
          const isProfile = item.view === "profile";
          const navName = item.view === "studio" ? "build" : item.view;
          const profileStyle = {
            "--avatar-hue": accountHue(account),
            "--avatar-image": account?.photoUrl ? `url(${JSON.stringify(String(account.photoUrl))})` : "none",
          } as CSSProperties;
          return <button key={item.view} id={isProfile ? "dock-profile" : undefined} type="button" data-nav={navName} data-slot={index} className={`${view === item.view ? "active" : ""} ${isProfile ? "dock-profile" : ""}`} style={isProfile ? profileStyle : undefined} aria-label={label} aria-current={view === item.view ? "page" : undefined}>
            {isProfile ? <>{account?.photoUrl ? <img src={String(account.photoUrl)} alt="" referrerPolicy="no-referrer" onError={(event) => event.currentTarget.remove()} /> : null}<span>{accountInitials(account)}</span></> : <svg className="nav-icon" viewBox="0 0 24 24" aria-hidden="true"><LegacyDockIcon name={item.icon} /></svg>}
            {!isProfile ? <span>{label}</span> : null}
          </button>;
        })}
      </nav>
  );
}
