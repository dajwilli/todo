Blurt = React.createClass
  render: ->
    return <div className="content">
      <div className="summary">
        <a className="user">
          Elliot Fu
        </a> {@props.message}
        <div className="date">
          1 Hour Ago
        </div>
      </div>
      <div className="meta">
        <a className="like">
          <i className="like icon"></i> 4 Likes
        </a>
      </div>
    </div>

Timeline = React.createClass
  render: ->
    list = @props.data.map((blurtProps) ->
      return <div className="event">
        <Blurt {...blurtProps} />
      </div>
    )
    return <div className="ui large feed">
      {list}
    </div>

options =  data: [{
  message: 'Hello World!!!'
},{
  message: 'I am alive!!!'
}]

@Blurts = React.createClass
  getInitialState: ->
    blurts: @props.data
  getDefaultProps: ->
    blurts: []
    console.log @state

  render: ->
    return <Timeline {...options} />
