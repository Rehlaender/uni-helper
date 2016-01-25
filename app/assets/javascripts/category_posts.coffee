# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  message = $('#userdo').html()
  $("#Botones a").click ->
    #alert "You clicked on the sub-div with id = " + this.id
    category = this.id
    alert category
    if category == 'Busco'
      category = "Ofrecen:"
      $('#userdo').empty().append message + category
      return
    else if category == 'Ofrezco'
      category = "Buscan:"
      $('#userdo').empty().append message + category
      return
    else
      return
    return

  $('select[name="mapCat"]').change ->
    chosenCat = $(this).val()
    $('#mapContent tr').show()
    $('#mapContent tr').not('.' + chosenCat).hide()
    return

$(document).ready(ready)
$(document).on('page:load', ready)
