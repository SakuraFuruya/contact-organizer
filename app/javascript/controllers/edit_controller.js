import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit"
export default class extends Controller {

  static targets = ["content", "form"]

  displayForm(){
    console.log("Hello")
    this.formTarget.classList.remove("d-none")
    // this.contentTarget.classList.add("d-none")
  }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: {"Accept": "text/plain"},
      body: new FormData(this.formTarget)
    })

    .then(response => response.text())
    .then((data) => {
      this.contentTarget.outerHTML = data
    })
  }

}
