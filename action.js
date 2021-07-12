$(document).ready(function () {

    // console.log($('.zboob'))
    var buttonHideShow = $('.btn');
    console.log(buttonHideShow)
    for (let i = 0; i < buttonHideShow.length; i++) {
        const element = buttonHideShow[i];
        console.log(element);
        element.addEventListener('click', (e) => {
            $('.description').hide(function () { })
            $('.description').empty(function () { })    
            $('.description').text('description basique d u job');
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


$(document).ready(
  function(){
    $.ajax({
      url : "get.php",
      type: "GET",
      dataType: "json",
      sucess: function(gigaArray){
        console.log(gigaArray)
      }
    })
  }
)


