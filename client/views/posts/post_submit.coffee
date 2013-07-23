Template.postSubmit.events 
  'submit form': (e) ->
    e.preventDefault()

    # Capture all the form fields
    post = 
      url: $(e.target).find('[name=url]').val()
      title: $(e.target).find('[name=title]').val()
      message: $(e.target).find('[name=message]').val()

    # Invoke a server-side method to add the post
    Meteor.call 'post', post, (error, id) ->
      if error 
        return alert(error.reason)

      Meteor.Router.to 'postPage', id
