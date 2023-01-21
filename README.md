# Tagging API

## Local Development (Mac OS / Ubuntu)

 - Ruby version 2.7.6

**System Level Dependencies:**

 - PostgreSQL 14.3


**Additional Gems**

 - Shoulda Mathchers ~> 5.0


**Project Level Dependencies**

 - bundle install

**Setting up the Database**

 - rails db:create 
 - rails db:migrate 
 - rails db:seed

**Running the Rails Server**

 - rails server

**Running Tests**

- bundle exec rspec


# Functionalities
## Graph:
### Index
Method: `GET`

url:  `/graphs`

### Show Count
This is the require functionality showing count of the nodes and links ( The graph json object is alos present in console on this page )

Method: `GET`

url:  `/graphs/:id`



### API ENDPOINT
 API: Gets Graph in JSON Format
 
Method: `GET`

url:  `/api/v1/graphs/:id`

response:
 
    {
     "nodes": [...],
     "links": [...]
    }


## Time Taken

- Reading - 30 minutes
- Thinking - 30 minutes
- Implementing Ruby - 45 minutes
- Implementing Javascript - 30 minutes
- Witing Specs - 40 minutes
- Refractoring Code - 1 hour

### Total : 2 hours & 55 minutes ( without Reading and Thinking )


### TODOs

- Further mature the API, by making other RESTful methods for it.
- Store/Dump once calculated JSONs in a DB from where instead on conversion, they can be read when required.
- Implement the Javascript to display the relations/links between nodes.
