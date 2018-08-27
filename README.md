## Newton X Technical test - JSON Api

This project is my submission for the Newton X Todo JSON Api technical test.  I built this Api with Ruby and Rails, using the --api option when initializing the project, to skip unnecessary files and components like javascript, views or styles. 


### Setup
To get started, clone this repository, cd into directory.
 - To create your db, run `$ rails db:create`
 - To Migrate your db, run `$ rails db:migrate `
 - To add 4 users to db, run `$ rails db:seed `
 - Now, you're ready to start your server, run `$ rails s`


### Interacting with API with curl
This JSON Api implements the specifications outlined in [jsonapi.org](http://jsonapi.org/), Sending data to the api, especially when creating resources requires a strict format, see example below.  You are also required to specify the Content Type as JSON.

```
Example Structure to create a resource
{
  'type': 'users',
  'data': {
    'attributes': {
      'first_name': 'newton',
      'last_name': 'x'
    }
  }
}

```

- To view all users, run `$ curl http://localhost:3000/users`
- To view a single user, `$ curl http://localhost:3000/users/:id`
- To create a new User, run `$ curl -d '{"type":"users", "data": {"attributes": {"first_name": "ethan", "last_name": "ozelius"}}}' -H "Content-Type: application/json" -X POST http://localhost:3000/users -w "\n\n"`