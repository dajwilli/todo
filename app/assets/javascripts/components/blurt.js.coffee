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
  test: ->
    console.log 'test'

  handleDelete: (e) ->
    e.preventDefault()
    console.log 'Clicked Blurt'
    console.log e.target
    console.log @props
    $.ajax
      method: 'DELETE'
      url: "/blurts/#{ @props.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteBlurt @props

  getLikes: ->
    $ajax
      method: 'GET'
      url: "/blurts/#{@props.id}/likes"

  render: ->
    return <div className="event" >
      <div className="content">
        <div className="summary left floated">
          <a className="user right floated">
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
      <i className="remove icon right floated delete blurt" onClick={@handleDelete}></i>
    </div>
