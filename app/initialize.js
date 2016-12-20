document.addEventListener('DOMContentLoaded', () => {
  const elmNode = document.getElementById('elm-main')
  window.app = Elm.Main.embed(elmNode)

  // do your setup here
  var $ = require('jquery');
  console.log('Initialized app');
});
