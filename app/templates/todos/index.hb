<ul id="todo-list">
  {{#each itemController="todo"}}
    <li {{bind-attr class="isCompleted:completed isEditing:editing"}}>
      {{#if isEditing}}
        {{edit-todo class="edit" value=title focus-out="acceptChanges" insert-newline="acceptChanges"}}
      {{else}}
        {{input type="checkbox" checked=isCompleted class="toggle"}}
        <label {{action "editTodo" on="doubleClick"}}>{{title}}</label><button {{action "removeTodo"}} class="destroy"></button>
      {{/if}}
    </li>
  {{/each}}
</ul>
