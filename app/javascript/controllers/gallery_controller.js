import { Controller } from "stimulus"
// import * as Masonry from 'masonry-layout';


export default class extends Controller {
  static targets = ["items"]

  connect() {
    this.masonry = new Masonry( this.element, {
      // options...
      itemSelector: '.grid-item',
      columnWidth:  '.grid-item',
      // fitWidth: true, 
      fitWidth: true, 
    });

    console.log(this.itemsTarget.children.className)
  }


}