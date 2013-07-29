@Errors = new Meteor.Collection(null)

window.Helpers = {}

Helpers.throwError = (message) ->
  Errors.insert
    message: message

Helpers.clearErrors = () ->
  Errors.remove
    seen: true