var phrases = [
  "The coolest phrase.", "Let's go to the movies.", "Le compte avait commencé à rebours."
];


function loadPhrase(){
  var phrase = phrases[Math.floor(Math.random()*phrases.length)];
  $(".phrase").text(phrase);
};


$(".button-refresh").click(function(){
  var phrase = phrases[Math.floor(Math.random()*phrases.length)];
  $(".phrase").text(phrase);
});

$(".addphrase").submit(function(e){
  e.preventDefault();
  var newphrase = $('#newphrase').val();
  phrases.push(newphrase);
  console.log(phrases);
})

loadPhrase();
