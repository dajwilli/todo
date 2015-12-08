R = React.DOM

@Task = React.createClass
  render: ->
    R.div
      className: 'item'
      R.div
        className: 'ui checkbox'
        R.input
          type: 'checkbox'
      R.div
        className: 'content'
        R.div
          className: 'header'
          @props.task.title
        R.div
          className: "description #{@props.task.priority}"
          @props.task.priority