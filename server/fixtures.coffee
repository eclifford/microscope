if @Posts.find().count() is 0 
  now = new Date().getTime()

  # Create two users
  ericId = Meteor.users.insert
    profile:
      name: 'Eric Clifford'

  eric = Meteor.users.findOne(ericId)

  gretchenId = Meteor.users.insert
    profile:
      name: 'Gretchen Pfeffer'

  gretchen = Meteor.users.findOne(gretchenId)

  telescopeId = @Posts.insert
    title: 'Introducing Telescope'
    userId: eric._id
    author: eric.profile.name 
    url: 'http://sachagreif.com/introducing-telescope'
    submitted: now - 7 * 3600 * 1000
    commentsCount: 1

  @Comments.insert
    postId: telescopeId
    userId: eric._id
    author: eric.profile.name
    submitted: now - 5 * 3600 * 1000
    body: 'Interesting project, how can I help?' 