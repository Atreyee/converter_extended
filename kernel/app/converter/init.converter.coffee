example ?= {}
example.converter ?= {}

example.converter.start = ->
  example.converter.controller
    views:
      conversionForm: calatrava.bridge.pages.pageNamed "conversionForm"
      successPage: calatrava.bridge.pages.pageNamed "successPage"
    changePage: calatrava.bridge.changePage
    ajax: calatrava.bridge.request

  calatrava.bridge.changePage "conversionForm"
