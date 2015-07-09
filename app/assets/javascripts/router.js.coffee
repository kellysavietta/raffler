# For more information see: http://emberjs.com/guides/routing/

Raffler.Router.map ->
  # @resource('posts')
  @route "entries", path: "/"

Raffler.EntriesRoute = Ember.Route.extend
  setupController: (controller) -> controller.set('content', [])
