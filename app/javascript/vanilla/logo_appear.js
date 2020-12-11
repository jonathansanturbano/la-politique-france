const logoAppear = () => {
  if(document.querySelector('.logo-home')) {
    const logo = document.querySelector('.logo-home');
    logo.classList.add("show");
  };
};

export { logoAppear };
