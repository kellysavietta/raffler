Raffler.EntriesController = Ember.ArrayController.extend
  actions:
    addEntry: ->
      @pushObject Ember.Object.create(name: @get('newEntryName'))
      @set('newEntryName', "")

    drawWinner: ->
      pool = @rejectProperty('winner')
      if pool.length > 0
        entry = pool[Math.floor(Math.random()*pool.length)]
        entry.set('winner', true)