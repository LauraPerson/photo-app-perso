import Sortable from 'sortablejs';
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "list-photo" ]

  connect() {
    Sortable.create(this.element, {
      draggable: ".draggable"
    });
  }

}
