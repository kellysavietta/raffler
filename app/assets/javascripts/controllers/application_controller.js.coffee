Raffler.ApplicationController = Ember.Controller.extend
  entries: []
  actions:
    addEntry: ->
      alert @get('newEntryName')
      @set('newEntryName', "")