const logoAppear = () => {
  if (document.querySelector(".home-explanation")) {
    const logo = document.querySelectorAll(".home-explanation");
    setTimeout(() => {
      logo[0].classList.add("show");
    }, 1000);
    setTimeout(() => {
      logo[1].classList.add("show");
    }, 2000);
  }
};

export { logoAppear };
