if @Posts.find().count() is 0 
  @Posts.insert
    title: 'Introducing Telescope'
    author: 'Sacha Greif'
    url: 'http://sachagreif.com/introducing-telescope'

  @Posts.insert
    title: 'Meteor'
    author: 'Tom Coleman'
    url: 'http://meteor.com'

  @Posts.insert
    title: 'The Meteor Book'
    author: 'Tom Coleman'
    url: 'http://www.themeteorbook.com'