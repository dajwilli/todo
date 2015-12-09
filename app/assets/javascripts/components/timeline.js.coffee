@Timeline = React.createClass
  render: ->
    list = @props.blurts.map((blurtProps) ->
      return <div className="event" key={blurtProps.id}>
        <Blurt {...blurtProps} />
      </div>
    )
    return <div className="ui large feed">
      {list}
    </div>