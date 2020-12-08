const initAlgolia = () => {
 const algoliasearch = require("algoliasearch");
 var client = algoliasearch('D6JCLQKW9S', 'fff1b0c9f7758c6eb99791144c3a208d');
 var index = client.initIndex('politique-france');
 index.search('Le', { hitsPerPage: 10, page: 0 })
   .then(function searchDone(content) {
     console.log(content)
   })
   .catch(function searchFailure(err) {
     console.error(err);
   });
}

export { initAlgolia };
