Like = React.createClass
  render: ->
    if @props.id == 37
      return <a className="like">
        <i className="like icon selected"></i> 4 Likes
      </a>
    else
      return <a className="like">
        <i className="like icon"></i> 4 Likes
      </a>

@Blurt = React.createClass
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
        <Like {...@props} />
      </div>
    </div>