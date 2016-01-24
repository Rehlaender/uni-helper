# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('select[name="mapCat"]').change ->
    chosenCat = $(this).val()
    $('#mapContent tr').show()
    $('#mapContent tr').not('.' + chosenCat).hide()
    return
$(document).ready(ready)
$(document).on('page:load', ready)
