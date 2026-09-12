import type { Language, ThemePreference } from "../api/types";
import type { AppAction, View } from "./app-state";

export const navigate = (view: View): AppAction => ({ type: "navigate", view });
export const setLanguage = (language: Language): AppAction => ({ type: "set-language", language });
export const setTheme = (themePreference: ThemePreference): AppAction => ({ type: "set-theme", themePreference });
