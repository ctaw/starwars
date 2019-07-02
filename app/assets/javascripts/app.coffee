ready = ->

  storageFilms = []
  storageFilms = localStorage.getItem('favoriteFilms')
  # storageFilms = JSON.parse storageFilms
  console.log storageFilms
  #
  # $.ajax
  #   type: 'GET'
  #   url: '/'
  #   data: favs: storageFilms
  #   success: (data) ->
  #     console.log 'HI'


  $('[data-toggle=popover]').popover
    html: true
    content: ->
      $('#popover-content').html()

$(document).ready(ready)
$(document).on('turbolinks:load', ready)
