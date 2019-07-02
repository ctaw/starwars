ready = ->
  # itemsArray = if localStorage.getItem('items') then JSON.parse(localStorage.getItem('items')) else []
  # localStorage.setItem 'items', JSON.stringify(itemsArray)
  # data = JSON.parse(localStorage.getItem('items'))

$(document).ready(ready)
$(document).on('turbolinks:load', ready)
