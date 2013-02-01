$(document).ready(function() {
	
	$("#relationship").change( function() {
	var relSelected = $("#relationship option:selected").text();
	if( relSelected === 'Other' ) {
		$('.other, .gender').show();
	} else {
		$('.other, .gender').hide();
	}
	});
	
	

    // close alert message window
    $('.alert').alert('close');
	//$("#errorBox").alert('close');
	// ICANJ directory dataTable setup
	$("#directory").dataTable();

	function loggedUserProfile() {
		
	}
});

