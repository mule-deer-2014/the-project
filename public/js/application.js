var app = function(){
  this.voteResults = $("#vote_results")
  this.voteButtons = $("#buttons")
}

app.prototype = {
  downVoteAjax: function(){

  },

  handlEvent: function(event){
    event.preventDefaults();

    if(event.target && event.target.className == 'down'){
      this.downVoteAjax();
    }else if (event.target && event.target.className == 'up'){
      this.upVoteAjax();
    }
  },

  setEventHandlers: function(){
    this.voteButtons.on('click', handlEvent)
  }
}
