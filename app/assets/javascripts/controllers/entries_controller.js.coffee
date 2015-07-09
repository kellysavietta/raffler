Raffler.EntriesController = Ember.ArrayController.extend
  entries: []
  actions:
    addEntry: ->
      @entries.pushObject name: @get('newEntryName')
      @set('newEntryName', "")