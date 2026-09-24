// Google Material Design 3 Web Components initialization
import '@material/web/button/filled-button.js';
import '@material/web/button/outlined-button.js';
import '@material/web/button/filled-tonal-button.js';
import '@material/web/button/text-button.js';
import '@material/web/iconbutton/icon-button.js';
import '@material/web/fab/fab.js';
import '@material/web/switch/switch.js';
import '@material/web/textfield/outlined-text-field.js';
import '@material/web/chips/chip-set.js';
import '@material/web/chips/filter-chip.js';
import '@material/web/chips/assist-chip.js';
import '@material/web/progress/linear-progress.js';
import '@material/web/progress/circular-progress.js';
import '@material/web/ripple/ripple.js';
import '@material/web/elevation/elevation.js';

// Polyfill .checked on MdSwitch prototype for seamless compatibility with checkbox code
const MdSwitch = customElements.get('md-switch');
if (MdSwitch && !Object.prototype.hasOwnProperty.call(MdSwitch.prototype, 'checked')) {
  Object.defineProperty(MdSwitch.prototype, 'checked', {
    get() { return this.selected; },
    set(v) { this.selected = Boolean(v); },
    configurable: true,
    enumerable: true
  });
}
