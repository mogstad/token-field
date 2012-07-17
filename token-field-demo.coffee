window.onload = ->
  item = document.getElementById("token-field")
  delegate = {
    visualisationForObject: (object, field) ->
      li = document.createElement("li")
      li.innerHTML = object.name
      close = document.createElement("div")
      close.className = "close"
      li.appendChild(close);
      return li

    objectForString: (string) ->
      return {
        name: string
      }
  }

  tokenField = new TokenField({
    delegate: delegate
  })
  document.body.appendChild(tokenField.render().el)
  tokenField.insertToken({name: "Backbone"})
  tokenField.insertToken({name: "Token"})
  tokenField.insertToken({name: "Field"})
