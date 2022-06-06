# README

### create a rails project
```
# create a rails project
rails new project-name -d postgresql --api

# create a model
rails g model model_name attr1:type attr2:type

# delete a model (make singular named model)
rails d model model_name

# create a controller (plural of model name)
rails g controller api/model_names

# delete a controller
rails d controller model_names

# create a db (after you create your app)
rails db:create

# migrate a db (after you create a model)
rails db:migrate

# seed a db (run your seeds.rb file)
rails db:seed

# drop a db (destroy your db)
rails db:seed

# all at the same time (destroy your db, recreate, migrate, seed)
rails db:drop db:create db:migrate db:seed
--or--
rails db:reset

```

### create a model 
```
rails
```

