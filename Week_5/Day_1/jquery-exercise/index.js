var phrases = [
  "The coolest phrase.", "Let's go to the movies.", "Le compte avait commencé à rebours."
];

var list = $('ul.allsentences')

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
  showNewPhrase(newphrase)
  $(".addphrase")[0].reset()
})



$(".viewphrase").click(function(e){
  e.preventDefault();
  $(".viewphrase").toggleClass('active');
  if ($(".viewphrase").hasClass('active')) {
    $.each(phrases, function() {
      var li = $('<li/>')
        .appendTo(list);
      var content = $('<p/>')
        .text(this)
        .appendTo(li);

      var button = $('<button/>')
      .text("remove")
      .appendTo(li)
      .addClass("newbutton")
    })
  }
  else {
    ($(".allsentences").text(""));
}
});

function showNewPhrase(newphrase){
      var li = $('<li/>')
        .appendTo(list);
      var content = $('<p/>')
        .text(newphrase)
        .appendTo(li);

      var button = $('<button/>')
        .text("remove")
        .appendTo(li)
        .addClass("newbutton")
}

loadPhrase();
