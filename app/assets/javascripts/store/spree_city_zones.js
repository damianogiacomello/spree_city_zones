(function($){
	$(document).ready(function(){		
		if($('#checkout_form_cart').is('*')){

			var get_cities = function(state){
				if ($('div#' + state + 'state select').is(":visible")) {
					state = $('div#' + state + 'state select').val();
				} else {
					state = ""
				}
				return city_mapper[state];
			}

			var update_cities = function(state) {
				cities = get_cities(state);

				city_select = $('p#' + state + 'city select');
				city_input = $('p#' + state + 'city input');

				if(cities) {
					selected = city_select.val();
					city_select.html('');
					cities_with_blank = [["",""]].concat(cities);
					$.each(cities_with_blank, function(pos,id_nm) {
						var opt = $(document.createElement('option'))
						.attr('value', id_nm[0])
						.html(id_nm[1]);
						if(selected==id_nm[0]){
							opt.prop("selected", true);
						}
						city_select.append(opt);
					});
					city_select.prop("disabled", false).show();
					city_input.hide().prop("disabled", true);

				} else {
					city_input.prop("disabled", false).show();
					city_select.hide().prop("disabled", true);
				}

			};

			$('p#bstate select').change(function() { update_cities('b'); });
			$('p#sstate select').change(function() { update_cities('s'); });
			update_cities('b');
			update_cities('s');

		}

	});
})(jQuery);