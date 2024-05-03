import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit"
export default class extends Controller {

  static targets = ["content", "form"]

  displayForm(){
    console.log("Hello")
    this.formTarget.classList.remove("d-none")
    // this.contentTarget.classList.add("d-none")
  }

}
