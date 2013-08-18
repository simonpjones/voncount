(function($) {
  var initCounter;

  initCounter = function($field, $counter) {
    var countCharacters, maxLength;
    maxLength = $field.attr('maxlength') || 255;
    countCharacters = function() {
      var len, value;
      value = $field.val();
      len = value.length;
      if (len >= maxLength) {
        $field.value = value.substring(0, maxLength);
      }
      return $counter.text(maxLength - len);
    };
    $field.on('keydown keyup change blur focus', function() {
      return countCharacters();
    });
    countCharacters()
  };
  
  setTimeout(function(){
    $('.von-countable').each(function() {
      var $field;
      $field = $(this);
      initCounter($field, $field.nextAll('.von-counter'));
    });
  }, 300);
})(jQuery);