$(document).on('turbolinks:load', function() {

  $('.role_select').on('change', function(){

    // clear the response
    $('#response').text('');

    $.ajax({
      url: '/users/',
      method: 'PATCH',
      data: {id: $(this).attr('id'),
             role_id: $(this).val()
            },
      dataType: 'JSON'
    }).done(function(data){

      $('#response').text('Role Changed!');

    }).fail(function(data){

      $('#response').text('Role may not have changed!');

    }); // end ajax

  }); // end ('.role_select').on('change'

}); // function
