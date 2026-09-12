import type { View } from "./app-state";

const views: View[] = ["studio", "jobs", "catalog", "system", "profile", "lab"];

export function parseView(hash: string): View {
  const raw = hash.replace(/^#/, "");
  if (raw === "build") return "studio";
  const value = raw as View;
  return views.includes(value) ? value : "studio";
}

export function isLabView(view: View): boolean { return view === "lab"; }
