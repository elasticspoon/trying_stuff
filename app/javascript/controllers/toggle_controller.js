import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="toggle"
export default class extends Controller {
  static classes = ["change"];
  static targets = ["target"];
  toggle() {
    if (this.hasTargetTarget) {
      this.targetTargets.forEach((element) => {
        element.classList.toggle(this.changeClass);
      });
    } else {
      this.element.classList.toggle(this.changeClass);
    }
  }
}
