function form_submit(event){
    event.preventDefault()
      let user = {

        }
        JSON.stringify(user)
        console.log(user)

      $.ajax({
            url : "post.php",
            type: "POST",
            dataType: "html",
            data : {
              identifiant:$('#name').val(),
              pseudo: $('#pseudo').val(),
              psw: $('#psw1').val(),
              mail: $('#mail').val(),
              tel: $('#tel').val(),
              success : function(){
                console.log('ca marche');
              }
              }


            }
          )

      }

      const form = document.getElementById('formulaire')
      form.addEventListener('submit', form_submit);
