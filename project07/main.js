var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var magicNumber = Math.floor((Math.random()*100)+1);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
  
  $("input:button#btnGuess").click(function() {
  	guessesLeft--;
  	$("span#guessesLeft").text(guessesLeft);
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
