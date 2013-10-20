var accessibilitiesSelector = {

	init: function () {
		accessibilitiesSelector.bindAccessibilitiesLinks();
	},

	bindAccessibilitiesLinks: function() {
		$('.accessibilities a').click(function(evt){
			evt.preventDefault();
			evt.stopPropagation();
			$(this).toggleClass('selected');

			$.post(
				$(this).attr('href'),
				{ accessibility_id: $(this).data('accessibilityId') },
				function(data){
					console.log(data.session);
				}
			);
		});
	}
}
$(document).ready(function(){
	accessibilitiesSelector.init();
})