<section id="todoapp">
  <header id="header">
    <h1>todos</h1>
    {{input type="text" id="new-todo" placeholder="What needs to be done?"
            value=newTitle action="createTodo"}}
  </header>

  <section id="main">
    {{outlet}}

    <input type="checkbox" id="toggle-all">
  </section>

  <footer id="footer">
    <span id="todo-count">
      <strong>{{remaining}}</strong> {{inflection}} left
    </span>
    <ul id="filters">
      <li>
        {{#link-to "todos.index" activeClass="selected"}}All{{/link-to}}
      </li>
      <li>
        {{#link-to "todos.active" activeClass="selected"}}Active{{/link-to}}
      </li>
      <li>
        {{#link-to "todos.completed" activeClass="selected"}}Completed{{/link-to}}
      </li>
    </ul>

    <button id="clear-completed">
      Clear completed (1)
    </button>
  </footer>
</section>

<footer id="info">
  <p>Double-click to edit a todo</p>
</footer>
