var pry = require('pryjs')

var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }

    var unsorted_episodes = JSON.parse(file);

    var sorted_episodes = unsorted_episodes.sort(function(a,b) {
        return a.episode_number-b.episode_number
      })

    function print(episodes){
      for (i=0; i<episodes.length; i++){
      var stars = ""
        for (j=0; j<episodes[i].rating; j++){
        stars += ("*")
        }
      console.log("Title: " + episodes[i].title + "    Episode #:" +episodes[i].episode_number +" \n" + episodes[i].description + "\n" + "Rating: " + episodes[i].rating + "\n" + stars+ "\n");
      }
    }

    var filtered = sorted_episodes.filter(function(episode) {
      if (episode.rating > 8.5) {
      return episode}
    })

    function searchFor(string, episodes){
      var selected = []
      for (i=0; i<episodes.length; i++){
        if (episodes[i].description.indexOf(string)!= -1 ){
        selected.push(episodes[i])
      }
    }
    print(selected)
  }

    searchFor("Jon", sorted_episodes)
}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);
