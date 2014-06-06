console.log("test")
$(document).ready(function(){
	console.log("document ready")
	$("form").on('submit', function(event) {
		event.preventDefault();
		console.log("submitted!");
		var name = $("#name").val();
		$("h1").text(name);

	    function Visitor (name){
	    	this.name = name,
	    	this.el = $("<li>")
	    }

	    var newVisitor = new Visitor(name);
	    $("ul").append(newVisitor.el.text(name));
	})
})