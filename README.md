## Newton X Technical test - JSON Api

This project is my submission for the Newton X Todo JSON Api technical test.  I built this Api with Ruby and Rails, using the `--api` option when initializing the project, to skip unnecessary files and components like javascript, views or styles. 


### Setup
To get started, clone this repository, cd into directory.
 - `$ rails db:create` - To create your db.  Note: you must have postgres installed!  This will create 2 new pg databases `newtonx_development`, and `newtonx_test` 
 - `$ rails db:migrate ` - To Migrate your db
 - `$ rails db:seed ` - To add 4 users to db 
 - `$ rails s` - Now, you're ready to start your server 
To confirm the API is working, navigate to localhost:3000/users in your browser.  You should see a json representation of all users.



### Interacting with API with curl
- To view all users, run `$ curl http://localhost:3000/users`
- To view a single user, `$ curl http://localhost:3000/users/:id`
- To create a new User, run `$ curl -d '{"type":"users", "data": {"attributes": {"first_name": "ethan", "last_name": "ozelius"}}}' -H "Content-Type: application/json" -X POST http://localhost:3000/users -w "\n\n"`


This JSON Api implements the specifications outlined in [jsonapi.org](http://jsonapi.org/), POSTING data to the api, requires a JSON Content type, as well as a specific format.
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