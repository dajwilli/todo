@Blurts = React.createClass
  getInitialState: ->
    blurts: @props.data
  getDefaultProps: ->
    blurts: []
  addBlurt: (blurt) ->
    blurts = React.addons.update(@state.blurts, { $push: [blurt] })
    @setState blurts: blurts
  # deleteBlurt: (blurt) ->
  #   index = @state.blurts.indexOf blurt
  #   blurts = React.addons.update(@state.blurts, { $splice: [[index, 1]] })
  #   @replaceState blurts: blurts
  test: ->
    console.log 'test'

  render: ->
    # @getInitialState()
    console.log @state.blurts
    console.log @state
    console.log @props
    return <div>
      <Timeline {...@state}/>
      <BlurtForm handleNewBlurt={@addBlurt}/>
    </div>