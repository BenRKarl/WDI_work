
var collections;
var sample_list_view;

$(function(){
	var collections = new JuiceCollection;
	var sample_list_view = new JuiceListView({
		collection: collections,
		el: $('.juices')
	});


	$('.new-juice').on('submit', function(e){
		e.preventDefault();
		var nameField = $('.add-juice');
		var juiceName = nameField.val();
		nameField.val('');
		collections.add({name: juiceName});
	})

	
})
