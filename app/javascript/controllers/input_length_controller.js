import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="input-length"
export default class extends Controller {
  static targets = ["input", "target"];
  static values = { tweetLength: { type: Number, default: 0 } };

  connect() {
    this.updateText();
  }
  tweetLengthValueChanged() {
    this.updateText();
    this.warnUser();
  }
  lengthUpdate() {
    this.tweetLengthValue = this.inputTarget.value.length;
  }
  updateText() {
    this.targetTarget.innerHTML = `${this.tweetLengthValue}/280`;
  }
  warnUser() {
    if (this.tweetLengthValue >= 280) {
      this.targetTarget.classList.add("highlight");
    } else {
      this.targetTarget.classList.remove("highlight");
    }
  }
}
