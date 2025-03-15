import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["range", "display", "total", "hiddenInput"];
  static values = {
    initial: Number,
    totalPrice: Number,
  };

  connect() {
    this.discount = this.rangeTarget.value;
  }

  update(event) {
    this.discount = parseFloat(event.target.value);
    this.displayTarget.textContent = `$${this.discount.toFixed(2)}`;
    const newTotal = this.totalPriceValue - this.discount;
    this.totalTarget.textContent = `$${newTotal.toFixed(2)}`;

    if (this.hasHiddenInputTarget) {
      this.hiddenInputTarget.value = this.discount;
    }
  }
}
