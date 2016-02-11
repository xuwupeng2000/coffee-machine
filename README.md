## README

Just to try find out the idea of normalizing JSON from ORDS
and use a typical resources ORM to handle data receiving and submitting

How to run it

```
bundle install
rails console
```

in the console do

```
Order.all.to_a
```

Possible pros
- avoid write too much REST receiving code
- avoid ORM code
- Rails way convention
- Her gem is pretty customizable

Possible cons
- Her is a way of doing thing, it is not 100% customizable
