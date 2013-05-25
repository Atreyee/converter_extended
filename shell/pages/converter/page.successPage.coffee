calatrava.pageView ?= {}

calatrava.pageView.successPage = ->

  #TODO: refactor out
  $page = $('#successPage')
  $p = (sel)-> $(sel, $page)

  bind: (event, handler) ->
    console.log "event: #{event}"
    $p("#" + event).off('click').on 'click', handler

  render: (message) ->
    console.log('rendering...', message)

  get: (field) ->
    console.log('getting...', field)
    $page.find("#" + field).val()

  show: ->
    console.log('showing...')
    $page.show()

  hide: ->
    console.log('hiding...')
    $page.hide()
