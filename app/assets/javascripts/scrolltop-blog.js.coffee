ready = ->
  $(window).scroll ->
    element = $('#blog-page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 200
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#transition-page-top', ->
    $('html, body').animate(window.location.href = '/', 'slow')
$(document).ready(ready)
$(document).on('page:load', ready)