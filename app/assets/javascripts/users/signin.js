function readURL(input) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      $('#profilepic').attr('src', e.target.result);
    };
    reader.readAsDataURL(input.files[0]);
  }
}

$('#user_profile_image').change(function(){
  readURL(this);
});
