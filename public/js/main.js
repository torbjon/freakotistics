function reloadWithParams() {
  var vals = [];
  $('input:checked').each(function() {  
    if ($('input:checked').is(':checked')) {
      vals.push($(this).val());
    }
  });
  window.location.href = '?chart1=' + vals[0] + '&chart2=' + vals[1];
}

function disableUnchecked() {
  $('.disabled').each(function() {  
    $(this).attr('disabled', true);
    $(this).closest('label').css('color', '#999');
  });
}
disableUnchecked();

function undisable() {
  $('.disabled').each(function() {  
    $(this).attr('disabled', false);
    $(this).closest('label').css('color', '#333');
    $(this).removeClass('disabled');
  });
}
 
$('input:checkbox').on( 'click', function() {
  if ($('input:checked').length === 2) {
    reloadWithParams();
  } else {
    undisable();
  }
});
