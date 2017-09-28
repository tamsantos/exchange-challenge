$(document).ready ->
  $('form').change ->
    if $('form').attr('action') == '/exchange'
      exchange()

  $('.change_currency_values').click ->
    currency = $('#currency').val()
    currency_destination = $('#currency_destination').val()

    $('#currency').val(currency_destination)
    $('#currency_destination').val(currency)

    exchange()

exchange = () ->
  $.ajax '/exchange',
      type: 'POST'
      dataType: 'json'
      data: {
              currency: $('#currency').val(),
              currency_destination: $('#currency_destination').val(),
              quantity: $('#quantity').val()
            }
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)
    return false;
