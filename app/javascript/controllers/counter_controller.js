import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="counter"
export default class extends Controller {
  static targets = ["output"];
  static values = { count: { type: Number, default: 0 } };

  // connect() {
  //   this.count = 0;
  //   this.update;
  // }
  addOne() {
    this.countValue++;
    // this.update();
  }
  countValueChanged() {
    this.outputTarget.innerHTML = this.countValue;
  }
}
