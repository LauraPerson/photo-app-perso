import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {

  static targets = ["dropdown"]

  connect() {
  }
  openDropdown(e) {
    console.log(this.dropdownTarget)
    e.preventDefault()
    if (this.dropdownTarget.className == "navbar-dropdown display-none") {
      this.dropdownTarget.classList.remove("display-none")
      this.dropdownTarget.classList.add("display")
    } else {
      this.dropdownTarget.classList.remove("display")
      this.dropdownTarget.classList.add("display-none")
    }
  }
}

