import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "spark" ]

  displaySpark() {
    this.sparkTarget.classList.remove("opacity-0")
    this.sparkTarget.classList.add("opacity-1")
  }

  hideSpark() {
    this.sparkTarget.classList.remove("opacity-1")
    this.sparkTarget.classList.add("opacity-0")
  }
}
