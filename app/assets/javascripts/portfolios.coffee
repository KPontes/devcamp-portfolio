# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

mysort = undefined
mysort = ->
  $('.mydrags').sortable()
  return
  
$(document).ready mysort