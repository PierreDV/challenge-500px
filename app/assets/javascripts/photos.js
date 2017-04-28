// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  console.log("ready!");
  $(".btn-info").click(function(e){
    e.preventDefault();
    $(this).toggleClass("btn-info btn-danger");
    $(this).text(function(i, text){
        return text === "Like" ? "Liked" : "Like";
    });
    $(this).off('click');
    $(this).attr('href', "#");
  });
});
