import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { MotionConfig } from "motion/react";
import "./styles.css";
import "./joly-native.css";
import { App } from "./App";
import { AnimatedToastProvider } from "./components/ui/animated-toast";

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <MotionConfig reducedMotion="user" transition={{ duration: 0.2, ease: [0.22, 1, 0.36, 1] }}>
      <AnimatedToastProvider position="top-right" maxToasts={3}>
        <App />
      </AnimatedToastProvider>
    </MotionConfig>
  </StrictMode>,
);
