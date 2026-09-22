# Mini App: LiquidGlass and Morphicons

## Sources reviewed

- [`ybouane/liquidglass`](https://github.com/ybouane/liquidglass) provides the WebGL refraction renderer used by the moving dock lens.
- [`samasante/liquid-glass`](https://github.com/samasante/liquid-glass) informed the layered composition: refracted background below, crisp controls above, and a CSS fallback when live refraction is unavailable. Its React component is not included because this Mini App is framework free.
- [`guillermolg00/morphicons`](https://github.com/guillermolg00/morphicons) provides the framework free `<morph-icon>` element and interruptible spring transitions.

## Integration decisions

- WebGL is limited to the small moving lens. Applying it to the entire dock or page would make DOM capture and redraw cost too high for a Telegram WebView.
- The existing CSS glass remains the fallback. WebGL is skipped for reduced motion, data saver, devices reporting less than 4 GB of memory, and browsers without WebGL.
- Initialization waits until the dock is visible. This matters because the access gate hides the workspace until Telegram authentication completes.
- Dock labels and buttons stay outside the shader canvas, preserving text and touch target clarity.
- Every morph has a static SVG or text fallback so the unbundled development page remains usable.
- Morph transitions follow the operating system reduced motion preference.

## Applied interactions

- Studio: home to sparkle.
- Jobs: task sheet to completed task.
- Library: book to search.
- System: sliders to status dial.
- Manual source details: plus to minus.
- Active views use a short entrance transition which is disabled by reduced motion.
