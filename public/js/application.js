var App = function(){
  this.voteResults = $("#vote_results")
  this.voteButtons = $("#buttons")
  this.userId = $("#user_id")
}

App.prototype = {
  renderUpVotesPartial: function(data){
    this.voteResults.empty().append(data);
  },

  upVoteAjax: function(){
    var that = this
    $.ajax({
      url: '/users/' + this.userId[0].value + '/up_votes',
      type: 'GET'
    }).done(function(data){
      that.renderUpVotesPartial(data)
    })
  },

  handlEvent: function(event){
    event.preventDefault();

    if(event.target && event.target.className == 'down'){
      this.downVoteAjax();
    }else if (event.target && event.target.className == 'up'){
      this.upVoteAjax();
    }
  },

  setEventHandlers: function(){
    this.voteButtons.on('click', this.handlEvent.bind(this))
  }
}

var my_app = new App()
my_app.setEventHandlers();
