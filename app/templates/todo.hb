<ul id="todo-list">
  {{#each itemcontroller="todo"}}
    <li {{bind-attr class="isCompleted:completed"}}>
      {{input type="checkbox" checked=isCompleted class="toggle"}}
      <label>{{title}}</label><button class="destroy"></button>
    </li>
  {{/each}}
</ul>

