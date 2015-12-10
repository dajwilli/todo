@BlurtForm = React.createClass
  getInitialState: ->
    message: ''

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  submit: (e) ->
    e.preventDefault();
    console.log 'Add Blurt'
    console.log @props
    if @state.message
      $.post '', { blurt: @state }, (data) =>
        @props.handleNewBlurt data
        @setState @getInitialState()
      , 'JSON'
    else
      $('.nag')
        .nag('show')

  render: ->
    message = @state.message
    return <form className="ui reply form">
      <div className="field">
        <textarea type="text" value={message} onChange={@handleChange} name="message" />
      </div>
      <div className="ui blue labeled submit icon button" id="post" onClick={this.submit}>
        <i className="icon edit"></i> Post Blurt
      </div>
    </form>