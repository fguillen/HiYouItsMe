import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Message appears controller", this.element);
    console.log("Message appears controller", this.element.isConnected);
    console.log("Message appears controller", this.element.offsetTop);

    const mainElement = document.querySelector("main");
    mainElement.scrollTo(0, mainElement.scrollHeight);
  }
}
