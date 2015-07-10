# For more information see: http://emberjs.com/guides/routing/

Raffler.Router.map ->
  # @resource('posts')
  @route "entries", path: "/"

Raffler.EntriesRoute = Ember.Route.extend
  ## setupController: (controller) -> controller.set('content', [])
  ## setupController: (controller) -> controller.set('content', Raffler.Entry.find())
  # model: -> Raffler.Entry.find()
  model: -> @store.findAll 'entry'