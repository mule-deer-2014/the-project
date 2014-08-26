var App = function(){
  this.upVoteResults = $("#up_vote_results")
  this.downVoteResults = $("#down_vote_results")
  this.voteButtons = $("#buttons")
  this.userId = $("#user_id")
}

App.prototype = {
  renderDownVotesPartial: function(data){
    this.downVoteResults.empty().append(data);
  },

  downVoteAjax: function(){
    var that = this
    $.ajax({
      url: '/users/' + this.userId[0].value + '/down_votes',
      type: 'GET'
    }).done(function(data){
      that.renderDownVotesPartial(data)
    })
  },

  renderUpVotesPartial: function(data){
    this.upVoteResults.empty().append(data);
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

  handleEvent: function(event){
    event.preventDefault();

    if(event.target && event.target.className == 'down'){
      this.downVoteAjax();
    }else if (event.target && event.target.className == 'up'){
      this.upVoteAjax();
    }
  },

  setEventHandlers: function(){
    this.voteButtons.on('click', this.handleEvent.bind(this))
  }
}

var my_app = new App()
my_app.setEventHandlers();
