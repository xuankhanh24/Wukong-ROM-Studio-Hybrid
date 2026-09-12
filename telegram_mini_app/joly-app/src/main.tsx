import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./styles.css";
import "./joly-native.css";
import { App } from "./App";
import { AnimatedToastProvider } from "./components/ui/animated-toast";
import { ThemeProvider } from "next-themes";

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <ThemeProvider attribute="class" storageKey="wukong-theme" defaultTheme="system" enableSystem disableTransitionOnChange>
      <AnimatedToastProvider position="bottom-center" maxToasts={3}>
        <App />
      </AnimatedToastProvider>
    </ThemeProvider>
  </StrictMode>,
);
