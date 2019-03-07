import places from 'places.js';

const placesAutocomplete = () => {
  const delivery_address = document.getElementById("delivery_address")
  if (delivery_address) {
    places({
      appId: "plB80B7CR2T6",
      apiKey: "6158cccb1a104ada8feeabf29828f84b",
      container: document.querySelector('#delivery_address')
    });
  };
};

export { placesAutocomplete };
