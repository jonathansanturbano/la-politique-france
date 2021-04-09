// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("trix");
require("@rails/actiontext");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initModalOnClick } from "../components/modal";
import { initSelect2 } from "../components/init_select2";
import { initAlgolia } from "../components/init_algolia_search";
import { logoAppear } from "../vanilla/logo_appear";
import { cleanUpSearch } from "../vanilla/clean_up_search";

document.addEventListener("turbolinks:load", () => {
  initSelect2();
  initModalOnClick();
  initAlgolia();
  logoAppear();
  cleanUpSearch();
  // document.querySelectorAll(".political-card").forEach((card) => {
  //   card.addEventListener("mouseenter", (event) => {
  //     console.log(event.currentTarget);
  //   });
  // });
});
