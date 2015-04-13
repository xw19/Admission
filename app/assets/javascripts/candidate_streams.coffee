# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".stream").on "change", ->
    request = $.ajax {
      url: "/candidate_streams/form_fields",
      method: "post",
      dataType: "html",
      data: { stream: $(".stream").val() }
    }
    request.done (msg) ->
      $('.form-container').html $(msg).find ".candidate_form_contents"
    request.fail (xhr, status) ->
      alert("Some error")
