@Timeline = React.createClass
  getInitialState: ->
    blurts: @props.blurts

  test: ->
    1

  render: ->
    list = @props.blurts.map((blurtProps) =>
      return <Blurt key={blurtProps.id} {...blurtProps} handleDeleteBlurt={@props.deleteBlurt}/>
    )
    return <div className="ui large feed">
      {list}
    </div>