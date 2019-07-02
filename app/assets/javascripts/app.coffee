ready = ->

  
  $('[data-toggle=popover]').popover
    html: true
    content: ->
      $('#popover-content').html()

$(document).ready(ready)
$(document).on('turbolinks:load', ready)
