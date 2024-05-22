import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Scroll to bottom controller", this.element);
    this.element.scrollTo(0, this.element.scrollHeight);
  }
}
