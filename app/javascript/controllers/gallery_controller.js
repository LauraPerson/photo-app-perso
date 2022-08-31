import { Controller } from "stimulus"
// import { Fancybox, Carousel, Panzoom } from "@fancyapps/ui";
// import * as Masonry from 'masonry-layout';


export default class extends Controller {
  static targets = ["items"]

  connect() {

    setTimeout(this.init_masonry, 1000)
  }
  init_masonry = () => {
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