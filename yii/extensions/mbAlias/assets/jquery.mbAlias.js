(function($){
    $.fn.extend({
        mbAlias: function(options) {
            var defaults = {
                target: 'tag'
            }
            var options =  $.extend(defaults, options);
            return this.each(function() {
                $(this).change(function(){
                    $(options.target).val($(this).val().toAlias());
                });
            });
        }
    });
})(jQuery);