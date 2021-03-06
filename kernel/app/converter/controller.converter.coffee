example ?= {}
example.converter ?= {}

example.converter.controller = ({views, changePage, ajax}) ->
  currencies = ['USD', 'AUD', 'GBP', 'INR']
  currencyRate =
    USD: 1
    AUD: 0.96
    GBP: 0.62
    INR: 55

  inCurrency = "USD"
  outCurrency = "AUD"

  currencyDropdownViewMessage = (selectedCurrency, unselectableCurrency) ->
    _.map currencies, (c) ->
      code: c,
      enabled: c != unselectableCurrency
      selected: c == selectedCurrency

  performConversion = (amount) ->
    outRate = currencyRate[outCurrency]
    inRate = currencyRate[inCurrency]
    views.conversionForm.render
      out_amount: (Math.round(amount * (outRate / inRate) * 100)) / 100
    views.successPage.render
      result: (Math.round(amount * (outRate / inRate) * 100)) / 100
    calatrava.bridge.changePage('successPage')

  convert = () ->
    views.conversionForm.get 'in_amount', (inAmount) ->
      if inAmount == ""
        calatrava.confirm "No amount to convert. Convert one instead?", (convertOne) ->
          performConversion(1) if convertOne
      else
        performConversion(inAmount)

  views.conversionForm.bind 'convert', convert

  views.conversionForm.bind 'selectedInCurrency', ->
    views.conversionForm.get 'in_currency', (in_currency) ->
      inCurrency = in_currency
      views.conversionForm.render
        outCurrencies: currencyDropdownViewMessage outCurrency, inCurrency

  views.conversionForm.bind 'selectedOutCurrency', ->
    views.conversionForm.get 'out_currency', (out_currency) ->
      outCurrency = out_currency
      views.conversionForm.render
        inCurrencies: currencyDropdownViewMessage inCurrency, outCurrency

  views.conversionForm.render
    inCurrencies: currencyDropdownViewMessage inCurrency, outCurrency
    outCurrencies: currencyDropdownViewMessage outCurrency, inCurrency
    in_amount: 1
