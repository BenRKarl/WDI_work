function BoyPopStar (name, haircut){
	    	this.name = name;
	    	this.haircut = haircut;
	    	this.moves = [];
	    }
BoyPopStar.prototype.learnMoves = function(move){
	this.moves.push(move);

}

function Cizzurp (n){
	var str = ""
	for (var i = 1; i <= n; i++){
		if (i % 3 === 0){
			string += "cizz";
		}
		if(i % 5 === 0){
			string += "urp";
		}
		console.log(string || i);
	}
