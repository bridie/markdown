$( document ).ready(function() {

	$('#text-input-form').submit(function(event){

		var formData = {
			'plaintext': $('#text-input').val(),
		};

		$.ajax({
			type: 'POST',
			url: '/',
			data: formData,
			dataType: 'json',
			encode: true,
			success: function(data) {
				$('#text-output-box').html(data['html']);
			},
			error: function(data) {
        
    	},
		})

		event.preventDefault();

	});
 
});