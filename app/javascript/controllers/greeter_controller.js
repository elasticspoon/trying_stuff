import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="greeter"
export default class extends Controller {
  connect() {}
  static targets = ["name", "output"];
  greet() {
    this.outputTarget.innerHTML = `Hello, ${this.nameTarget.value}!`;
  }
  alert() {
    alert(`Greeted person: ${this.outputTarget.innerHTML}`);
  }
}
