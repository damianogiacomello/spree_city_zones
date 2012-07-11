$(function() {
	if ($('#country_based').is(':checked')) {
		hide_city();
	} else if ($('#city_based').is(':checked')) {
		show_city();
	} else {
		hide_city();
	}
	$('#city_based').click(function() { show_city();} );
	$('#country_based').click(function() { hide_city();} );
	$('#state_based').click(function() { hide_city();} );
});

var show_city = function() {
	$('#state_members :input').each(function() { $(this).prop("disabled", true); });
	$('#state_members').hide();
	$('#zone_members :input').each(function() { $(this).prop("disabled", true); });
	$('#zone_members').hide();
	$('#country_members :input').each(function() { $(this).prop("disabled", true); });
	$('#country_members').hide();
	$('#city_members :input').each(function() { $(this).prop("disabled", false); });
	$('#city_members').show();
};

var hide_city = function() {
	$('#city_members :input').each(function() { $(this).prop("disabled", true); });
	$('#city_members').hide();
}