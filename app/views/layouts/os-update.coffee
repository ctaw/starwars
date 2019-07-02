ready = ->
  $('#update-loader').hide()
  # ====> Company Update <====
  $('#update-company').click (e) ->
    e.preventDefault()
    $('.company-field:contains(Empty)').html ''
    $('#update-loader').show()
    $.ajax
      type: 'POST'
      url: '/global/update_company'
      data: {
        company_id: $('#node-uid').html(),
        name: $('#node-name').html(),
        address1: $('#node-address-1').html(),
        address2: $('#node-address-2').html(),
        city: $('#node-city').html(),
        postcode: $('#node-postcode').html()
      }
      success: (data) ->
        $('#update-loader').hide()
        $('#success-msg').removeClass 'hidden'
        $('#success-msg').fadeTo(2000, 500).slideUp 500, ->
          $('#success-msg').slideUp 500
          return
        return
      error: (xhr) ->
        $('#error-msg').removeClass 'hidden'
        $('#error-msg').fadeTo(2000, 500).slideUp 500, ->
          $('#error-msg').slideUp 500
          return
        return


  # ====> Site Update <====
  $('#update-site').click (e) ->
    e.preventDefault()
    $('#update-loader').show()
    $.ajax
      type: 'POST'
      url: '/global/update_site'
      data: {
        site_id: $('#site-node-uid').html(),
        name: $('#site-node-name').html(),
      }
      success: (data) ->
        $('#update-loader').hide()
        $('#success-msg').removeClass 'hidden'
        $('#success-msg').fadeTo(2000, 500).slideUp 500, ->
          $('#success-msg').slideUp 500
          return
        return
      error: (xhr) ->
        $('#error-msg').removeClass 'hidden'
        $('#error-msg').fadeTo(2000, 500).slideUp 500, ->
          $('#error-msg').slideUp 500
          return
        return




  $('#addSite').on 'hidden.bs.modal', (e) ->
    $('#add-site-form')[0].reset()
    return

$(document).ready(ready)
$(document).on('turbolinks:load', ready)
