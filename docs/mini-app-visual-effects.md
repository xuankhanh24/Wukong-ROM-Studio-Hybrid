# Mini App visual effects study

The Mini App is a small HTML/CSS/JavaScript application inside Telegram. Its build, jobs, library and system screens are dense working views, and the five-slot dock already has a glass surface and a draggable lens. The new visual treatment keeps those interactions intact.

| Reference | Relevant idea | Decision for this Mini App |
| --- | --- | --- |
| [ybouane/liquidglass](https://github.com/ybouane/liquidglass) | WebGL refraction, edge light and chromatic aberration on individual HTML elements. The glass element must be a direct child of its capture root; capturing frequently changing DOM is costly. | Apply one lens to the decorative Studio hero. Load it only when visible and capable, with a CSS glass fallback. No live job data is captured. |
| [samasante/liquid-glass](https://github.com/samasante/liquid-glass) | Crisp content above a refractive layer, headless composition and graceful frosting when live refraction is unavailable. It requires React. | Follow its layering and fallback pattern in CSS; do not add React to the existing Mini App. |
| [guillermolg00/morphicons](https://github.com/guillermolg00/morphicons) | A framework-free `<morph-icon>` component can animate stroke paths, including plus to minus, and supports the user's reduced-motion preference. | Use it for the source and pipeline disclosure controls, with a plain-text fallback. |
| [SceneAI](https://sceneai.art/) | Dark editorial canvas, luminous gradient typography, pill accents and cards with clear visual hierarchy. | Adapt the palette and hierarchy to ROM workflows in both system light and dark modes. Create all gradients in CSS; no SceneAI assets or prompts are copied. |

The hero is decorative; all essential status and controls remain ordinary DOM elements. The WebGL enhancement is skipped for reduced motion, data-saving mode and devices reporting less than 4 GB of memory. The CSS presentation remains usable when WebGL or DOM capture fails. On every screen, the existing dock remains the primary navigation control.
