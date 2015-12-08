R = React.DOM

@Tasks = React.createClass
  getInitialState: ->
    tasks: @props.data

  getDefaultProps: ->
    tasks: []

  render: ->
    R.div
      className: 'tasks'
      R.h2
        className: 'title'
        'Tasks'
      R.div
        className: 'ui celled list'
        for task in @state.tasks
          React.createElement Task, key: task.id, task: task
