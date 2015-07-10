Raffler.EntriesController = Ember.ArrayController.extend
  actions:
    addEntry: ->
      # Raffler.Entry.createRecord(name: @get('newEntryName'))
      @set('newEntryName', "")
      post = store.createRecord('post', name: @get('newEntryName'))
      post.save()

    drawWinner: ->
      @setEach('highlight', false)
      pool = @rejectProperty('winner')
      if pool.length > 0
        entry = pool[Math.floor(Math.random()*pool.length)]
        entry.set('winner', true)
        entry.set('highlight', true)
        @get('store').commit()