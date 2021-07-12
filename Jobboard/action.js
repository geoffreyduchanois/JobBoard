var ZiArray;
$(document).ready(function(){
    async function getData() {
      var data = $.ajax({
        url : "get.php",
        type: "GET",
        dataType: "json",
        error: function(error) {
          console.log('error:',  error);
        },
        success: function(result) {
          console.log('result: ',   result);
          ZiArray = result;
          console.log(ZiArray);
          console.log(ZiArray.Entreprise[0].Nom);
          for(let i = 0; i < ZiArray.Offre.length; i++) {
              $('.grid-container').append(
                  " <div class=\"grid-item\">" + ZiArray.Entreprise[i].Nom  + "</div><div class=\"grid-item\">" + ZiArray.Offre[i].Proposition + "</div><div class=\"grid-item\"><button class=\"btn\" >Learn more</button></div>"
              )
          }
        }
        })
      return data;
    }


    async function addBtns() {
      var dataResult = await getData(),
          buttonHideShow = $('.btn');

      for (let i = 0; i < buttonHideShow.length; i++) {
          const element = buttonHideShow[i];
          element.addEventListener('click', (e) => {
              $('.description').hide(function () { })
              $('.description').empty(function () { })
              $('.description').text(ZiArray.Entreprise[i].Infos);
              $('.description').append('<button class="apply">Apply</button>');
              $('.description').show(function () { })


              $('.apply').click(function() {
                  // When the user clicks the button, open the modal
                  modal.style.display = "block";
              })
              $('.cancel').click(function(){
                  modal.style.display = "none";
              })
          })
      }
}
// We call the function
addBtns();

// Get the modal
var modal = document.getElementById("myModal");


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
})
