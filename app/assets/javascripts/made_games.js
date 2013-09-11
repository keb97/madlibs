$(document).ready(function(){
  $('.text100').on('keyup', function(){
    $('#post-preview').html($('.text100').val());
  });
});
