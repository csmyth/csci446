var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var magicNumber = Math.floor((Math.random()*100)+1);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
  
  alert(magicNumber);
  
  $("input:button#btnGuess").click(function() {
  	guessesLeft--;
  	if ($("input:text#guess").val() == magicNumber) {
  		alert("You escape this time. Next time you won't be so lucky! Mwahaha!");
  		location.reload();
  	} else if (guessesLeft < 1) {
  		alert("Game Over");
  		location.reload();
  	} else {
	  	$("span#guessesLeft").text(guessesLeft);
	  	giveFeedback();
  	}
  });

});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').append(score);
}

function giveFeedback() {
	if ($("input:text#guess").val() < magicNumber) {
		alert("Too low!");
	} else {
		alert("Too high!");
	}
}
