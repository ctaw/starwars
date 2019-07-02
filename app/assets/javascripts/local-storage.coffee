ready = ->

    # obj = JSON.parse($(this).val())
    # returnData = Object.assign(obj, {favorite: true})
    # favoriteFilms = []
    # localStorage.setItem("favoriteFilms", JSON.stringify(returnData))
    # return

$(document).ready(ready)
$(document).on('turbolinks:load', ready)
