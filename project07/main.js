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
  		playagain();
  	} else if (guessesLeft < 1) {
  		alert("You lose puny human! Mwahaha!");
  		playagain();
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

function playagain() {
	var optin = confirm("Dare to play again?");
	if (optin == true){
		location.reload();
	} else {
		alert("Fine then. But if you change your mind, you're gonna have to refresh the page yourself! Mwahaha! *coughsputter* Ahem.");
		magicNumber = Math.floor((Math.random()*100)+1); //Prevent cheating
	}
}
	