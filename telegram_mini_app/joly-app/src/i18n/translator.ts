import type { Language } from "../api/types";
import { messages, type MessageKey } from "./messages";

export function translator(language: Language) {
  return (key: MessageKey): string => messages[language][key];
}
