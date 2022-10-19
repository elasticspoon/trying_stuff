import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="nested-form"
export default class extends Controller {
  static targets = ["container"];
  connect() {}
  addField() {
    var parent = document.createElement("div");
    parent.appendChild(this.createLabel());
    parent.appendChild(this.createInput());

    this.containerTarget.appendChild(parent);
  }
  removeField() {
    if (this.containerTarget.children.length > 0) {
      this.containerTarget.removeChild(this.containerTarget.lastChild);
    }
  }
  createInput() {
    var field = document.createElement("input");
    var childNum = this.containerTarget.children.length;
    field.setAttribute("type", "text");
    field.setAttribute(
      "id",
      `car_variants_attributes_${childNum}_variant_type`
    );
    field.setAttribute(
      "name",
      `car[variants_attributes][${childNum}][variant_type]`
    );
    return field;
  }
  createLabel() {
    var label = document.createElement("label");
    var childNum = this.containerTarget.children.length;
    label.setAttribute(
      "for",
      `car_variants_attributes_${childNum}_variant_type`
    );
    label.innerHTML = "Variant Type: ";
    return label;
  }
}
