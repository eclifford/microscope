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
        console.log error
        Helpers.throwError(error.reason)

        if error.error is 302
          Meteor.Router.to 'postPage', error.details
        else
          Meteor.Router.to 'postPage', id
        # return alert(error.reason)

      # Meteor.Router.to 'postPage', id
