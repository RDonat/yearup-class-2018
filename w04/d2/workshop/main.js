console.log('🚀');

axios.get('https://www.redbullshopus.com/products.json')
.then(function(response) {
  //handle success
  console.log(response)
  let picture = document.getElementById('proimage');
  picture.src = response.data.products[0].images[0].src;
  console.log(response.data.products[0].title);

  let ourButton = document.querySelector("#bullbullbutton");

  ourButton.addEventListener("click", changeproduct);

  function changeproduct() {
    picture.src = response.data.products[7].images[0].src;
  }
})
