$ ->
  $(".address-permanent").hide()
  $("#permanent_address").on 'change', ->
    $(".address-permanent").toggle()
