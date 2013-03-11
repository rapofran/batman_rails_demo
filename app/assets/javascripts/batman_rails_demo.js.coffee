window.BatmanRailsDemo = class BatmanRailsDemo extends Batman.App

  # @root 'controller#all'
  # @route '/controller/:id', 'controller#show', resource: 'model', action: 'show'

  @title = "Batman Rails Demo"

  Batman.ViewStore.prefix = 'assets/views'

  @navLinks: [
    {href: "/#!/posts/", controller: "posts", text: "Posts"},
  ]

  # routing...
  @resources 'posts'
  @root 'posts'

  @on 'run', ->
    console?.log "Running ...."

  @on 'ready', ->
    console?.log "BatmanRailsDemo ready for use."

  @flash: Batman()
  @flash.accessor
    get: (key) -> @[key]
    set: (key, value) ->
      @[key] = value
      if value isnt ''
        setTimeout =>
          @set(key, '')
        , 2000
      value

  @flashSuccess: (message) -> @set 'flash.success', message
  @flashError: (message) ->  @set 'flash.error', message
