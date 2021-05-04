// Load Active Admin's styles into Webpacker,
// see `active_admin.scss` for customization.
import "../stylesheets/active_admin";

import "@activeadmin/activeadmin";
require("trix");
require("@rails/actiontext");
require("turbolinks").start();

document.addEventListener("turbolinks:load", () => {
  // Execute if it can find the category box
  if (document.querySelector(".admin-categorie-thematique")) {
    // Get rid of extra boxes under
    const annoyingInputs = document.querySelector(".has_many_container");
    annoyingInputs.style.display = "none";

    // Selecting different input divs
    const categories = document.querySelectorAll(".admin-categorie-thematique");
    categories[0].classList.add("active");
    const categoriesList = document.querySelectorAll(
      ".admin-categories li button"
    );

    // Selecting the items to show and hide the corresponding divs
    categoriesList.forEach((categoryListItem) => {
      categoryListItem.addEventListener("click", (e) => {
        e.preventDefault();
        categories.forEach((category) => {
          category.classList.remove("active");
          if (category.dataset.category === e.currentTarget.textContent) {
            category.classList.add("active");
          }
        });
      });
    });
  }
});
