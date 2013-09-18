$ ->
  $('a.load-more-items').on 'inview', (e, visible) ->
    return unless visible
    
    $.getScript $(this).attr('href')
