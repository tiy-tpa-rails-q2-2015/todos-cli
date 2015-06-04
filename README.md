# Todo::CLI

* `add [list name] [todo item]` adds a todo item to a list (creating the list, if needed)
* `due [n] [time]` marks a todo item as due on the given date
* `done [n]` marks the todo item with id n as done
* `list` shows all incomplete todo items
* `list [name]` shows only items from the given list
* `list all` shows all items, including completed ones (with some visual cue for what is complete)
* `next` picks and shows a random item (choosing one with a due date if there are any)
* `search [string]` shows todo items containing the given string
