@Timeline = React.createClass
  deleteBlurt: (blurt) ->
    index = @state.blurts.indexOf blurt
    blurts = React.addons.update(@state.blurts, { $splice: [[index, 1]] })
    @replaceState blurts: blurts

  test: ->
    1

  render: ->
    list = @props.blurts.map((blurtProps) ->
      return <Blurt key={blurtProps.id} {...blurtProps} handleDeleteBlurt={@deleteBlurt}/>
    )
    return <div className="ui large feed">
      {list}
    </div>