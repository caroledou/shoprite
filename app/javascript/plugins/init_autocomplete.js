import places from 'places.js';

var placesAutocomplete = places({
  appId: "plB80B7CR2T6",
  apiKey: "6158cccb1a104ada8feeabf29828f84b",
  container: document.querySelector('#delivery_address')
});

export { placesAutocomplete };
