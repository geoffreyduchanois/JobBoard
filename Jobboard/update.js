var Idf;
var ZiArray;
var Mail;
var Mdp;
console.log('oui');
/* $(document).ready(function(){
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
          console.log(ZiArray.Identifiant[0].Mail);
          for (i= 0; i<ZiArray.Identifiant.length; i++){
            if (ZiArray.Identifiant[i].Mail==Mail){
              Idf = ZiArray.Identifiant[i].id_identification;
              if (ZiArray.Identifiant[Idf].Mdp== Mdp){

              }

            }

          }
        }
        })
      return data;
    }
    $('.submit').onclick=function(){
      Mail=$('#mail').val();
      Mdp=$('$psw').val();
    }
  })
*/
//  var ZiArray;
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
  })
