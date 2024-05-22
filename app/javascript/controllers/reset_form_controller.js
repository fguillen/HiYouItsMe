import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Reset form controller.connect()");
    this.reset();
  }

  reset() {
    this.element.reset();
    this.element.querySelector("textarea").focus();
  }
}
