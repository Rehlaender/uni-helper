# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('select[name="mapCat"]').change ->
    chosenCat = $(this).val()
    #var className = $('#mapContent ul li.');
    $('#mapContent ul li').show()
    $('#mapContent tr').show()
    $('#mapContent ul li').not('.' + chosenCat).hide()
    $('#mapContent tr').not('.' + chosenCat).hide()
    return
$(document).ready(ready)
$(document).on('page:load', ready)
