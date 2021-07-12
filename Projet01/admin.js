var ZiArray;
$(document).ready(function(){
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
          for(let i = 0; i < ZiArray.Correspondance.length; i++) {
              $('.grid-container1').append(
                  " <div class=\"grid-item\">" + ZiArray.Correspondance[i].id_correspondance  + "</div><div class=\"grid-item\">" + ZiArray.Correspondance[i].id_entreprise + "</div><div class=\"grid-item\">" + ZiArray.Correspondance[i].mails_envoyés + "</div><div class=\"grid-item\">" + ZiArray.Correspondance[i].personnes_concernées + "</div><div class=\"grid-item\">" + ZiArray.Correspondance[i].id_emploi +  "</div><div class=\"grid-item\"><button class=\"modify\" >Modify</button></div></div><div class=\"grid-item\"><button class=\"delete\" >Delete</button></div>"
              )
          }
          for(let i = 0; i < ZiArray.Emploi.length; i++) {
              $('.grid-container2').append(
                " <div class=\"grid-item\">" + ZiArray.Emploi[i].id_emploi  + "</div><div class=\"grid-item\">" + ZiArray.Emploi[i].Offre + "</div><div class=\"grid-item\">" + ZiArray.Emploi[i].id_entreprise + "</div><div class=\"grid-item\">" + ZiArray.Emploi[i].id_identification + "</div><div class=\"grid-item\">" + ZiArray.Emploi[i].CV +  "</div><div class=\"grid-item\"><button class=\"modify\" >Modify</button></div></div><div class=\"grid-item\"><button class=\"delete\" >Delete</button></div>"
              )
          }
          for(let i = 0; i < ZiArray.Entreprise.length; i++) {
              $('.grid-container3').append(
                  " <div class=\"grid-item\">" + ZiArray.Entreprise[i].id_entreprise  + "</div><div class=\"grid-item\">" + ZiArray.Entreprise[i].Nom + "</div><div class=\"grid-item\">" + ZiArray.Entreprise[i].Infos + "</div><div class=\"grid-item\">" + ZiArray.Entreprise[i].Employeur + "</div><div class=\"grid-item\">" + ZiArray.Entreprise[i].Coordonnées +  "</div><div class=\"grid-item\">" + ZiArray.Entreprise[i].Localisation +  "</div><div class=\"grid-item\"><button class=\"modify\" >Modify</button></div></div><div class=\"grid-item\"><button class=\"delete\" >Delete</button></div>"
              )
          }
          for(let i = 0; i < ZiArray.Identification.length; i++) {
              $('.grid-container4').append(
                " <div class=\"grid-item\">" + ZiArray.Identification[i].id_identification  + "</div><div class=\"grid-item\">" + ZiArray.Identification[i].Identifiant + "</div><div class=\"grid-item\">" + ZiArray.Identification[i].Pseudo + "</div><div class=\"grid-item\">" + ZiArray.Identification[i].Mdp + "</div><div class=\"grid-item\">" + ZiArray.Identification[i].Mail +  "</div><div class=\"grid-item\">" + ZiArray.Identification[i].Telephone +  "</div><div class=\"grid-item\">" + ZiArray.Identification[i].CV +  "</div><div class=\"grid-item\"><button class=\"modify\" >Modify</button></div></div><div class=\"grid-item\"><button class=\"delete\" >Delete</button></div>"
              )
          }
          for(let i = 0; i < ZiArray.Offre.length; i++) {
              $('.grid-container5').append(
                "<div class=\"grid-item\">" + ZiArray.Offre[i].id_offre + "</div><div class=\"grid-item\">" + ZiArray.Offre[i].Proposition + "</div><div class=\"grid-item\">" + ZiArray.Offre[i].Remuneration + "</div><div class=\"grid-item\">" + ZiArray.Offre[i].id_entreprise+  "</div><div class=\"grid-item\"><button class=\"modify\" >Modify</button></div></div><div class=\"grid-item\"><button class=\"delete\" >Delete</button></div>"
              )
          }
        }
        })
      return data;
    });

  /*  async function addBtns() {
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
addBtns();*/
