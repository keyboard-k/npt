(function($){
     $.fn.extend({
         defaultValue: function(str) {	
            return this.each(function() {
				var defaultValue = str || $(this).attr('rel');
				var defaultType = $(this).attr('type') || null;
				var cloneId = null;
				
				var self = $(this);

				if(defaultType == 'password'){
					createClone(this);
					
					$(this).blur(function(){
						if($(self).val().length <= 0){
								$('#'+cloneId).show();
								$(self).hide();
							}
					});
					
				}
				else{
					$(this).click(function(){
						if($(this).val() == defaultValue){
							$(this).val('');
							}
					}).keypress(function(){
						if($(this).val().length > 0){
							setState(this);
							}
					}).blur(function(){
							setState(this);
					}).focus(function(){
						if($(this).val() == defaultValue){
							$(this).val('');
							}
					});
					
					$.trim($(this).val());
					setState(this);
				}

				
				function setState(element){
					val = $.trim($(element).val());
					if(val.length <= 0 || val == defaultValue) {
						$(element).val(defaultValue).addClass('empty');
					}
					else {
						$(element).removeClass('empty');
					}
				}
				
				function createClone(element){		
					cloneId = $(element).attr('id')+'Clone';

					$("<input id='" + cloneId + "' type='text' />").attr('value',defaultValue).insertAfter(element).show().focus(function(){
						$(this).hide();
						$(self).show();
						setTimeout(function() {
							$(self).focus();
						}, 10);
					}).addClass($(element).attr('class')+' empty').attr('style',$(element).attr('style'));
					$(self).hide();
				}
				
            });
        }
    });
})(jQuery);