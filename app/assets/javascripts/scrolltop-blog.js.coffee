ready = ->
  $(window).scroll ->
    console.log '3'
    element = $('#blog-page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 200
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#transition-page-top', ->
    console.log '4'
    $('html, body').animate(window.location.href = '/', 'slow')
$(document).ready(ready)
$(document).on('page:load', ready)