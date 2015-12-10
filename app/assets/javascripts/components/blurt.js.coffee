@Blurt = React.createClass
  addLike: (data) ->
    @forceUpdate(data)

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

  render: ->
    return <div className="event" >
      <div className="content">
        <div className="summary left floated">
          <a className="user right floated">
            Anonymous:
          </a> {@props.message}
          <div className="date">
            1 Hour Ago
          </div>
        </div>
        <div className="meta">
          <Like {...@props} source={"/blurts/#{@props.id}/likes"} handleLike={@addLike}/>
        </div>
      </div>
      <i className="remove icon right floated delete blurt" onClick={@handleDelete}></i>
    </div>
