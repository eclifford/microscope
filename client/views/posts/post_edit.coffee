Template.postEdit.helpers
  post: ->
    return Posts.findOne Session.get 'currentPostId'

Template.postEdit.events
  'submit form': (e) ->
    e.preventDefault()

    currentPostId = Session.get 'currentPostId'

    # Get the updated post properties from the form
    postProperties = 
      url: $(e.target).find('[name=url]').val()
      title: $(e.target).find('[name=title]').val()

    console.log postProperties

    Posts.update(currentPostId, {$set: postProperties}, (error) ->
      console.log error
      if error
        alert error.reason
      else
        Meteor.Router.to 'postPage', currentPostId
    )

  'click .delete': (e) ->
    e.preventDefault()



