// Include js for all pages
$(function () {

  var $goBackLink = $('#go_back_link');

  $goBackLink.on('click', function (e) {
    e.preventDefault()
    history.back();
  })

})
