ready = ->
  $(window).scroll ->
    console.log '1'
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    console.log '2'
    $('html, body').animate({ scrollTop: 0 }, 'slow')
$(document).ready(ready)
$(document).on('page:load', ready)