import type { Language, ThemePreference } from "../api/types";

export type View = "studio" | "jobs" | "catalog" | "system" | "profile" | "lab";

export interface AppState {
  view: View;
  language: Language;
  themePreference: ThemePreference;
}

export type AppAction =
  | { type: "navigate"; view: View }
  | { type: "set-language"; language: Language }
  | { type: "set-theme"; themePreference: ThemePreference };

export function initialAppState(view: View, language: Language, themePreference: ThemePreference): AppState {
  return { view, language, themePreference };
}

export function appReducer(state: AppState, action: AppAction): AppState {
  switch (action.type) {
    case "navigate": return { ...state, view: action.view };
    case "set-language": return { ...state, language: action.language };
    case "set-theme": return { ...state, themePreference: action.themePreference };
  }
}
