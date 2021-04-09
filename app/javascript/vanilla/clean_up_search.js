const cleanUpSearch = () => {
  const duplicateSearch = document.querySelectorAll(
    ".select2-container--default"
  );
  if (
    window.location.href.match(/personnalites/) &&
    duplicateSearch.length > 1
  ) {
    duplicateSearch.forEach((search, index) => {
      if (index !== 0) search.remove();
    });
  } else {
    return;
  }
};

export { cleanUpSearch };
