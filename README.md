# Social Newcastle API

## CREATE A USER

### 1. First check to see if the user already exists:

```
curl http://localhost:3000/users?facebook_id=<facebook_id> --header "Accept: application/json"
```

#### Response (Found)

Code: HTTP 200

```json{"id":1,"facebook_id":"123","facebook_avatar":"foo","registered":null,"created_at":"2015-06-13T07:54:26.588Z","updated_at":"2015-06-13T07:54:26.588Z"}
```

#### Reponse Not Found

Code: 404 
No body.


### 2. If user does not exist create it 

To create a fresh user pass in the facebook_id, the facebook avatar link and a boolean flag whether or not this user is to be created as registered.

```curl -X POST http://localhost:3000/users --header "Content-Type: application/json" --header "Accept: application/json" -d '{"facebook_id": "123", "facebook_avatar":"foo", "registered":"false"}'```

#### RESPONSE:

Code:
201 Created 

```json
{"id":2,"facebook_id":"123","facebook_avatar":"foo","registered":null,"created_at":"2015-06-13T07:55:57.039Z","updated_at":"2015-06-13T07:55:57.039Z"}
```

-- NOTE: We set a friend as registered when we add friends.

## ADD FRIEND TO USER

1. In order to add a friend to user you first must check to see if the user exists.  See CREATE A USER
2. If the user does not exists create it.  See CREATE A USER

Take note of the friend's id (not facebook id).

3. To add the friend:

```
curl -X POST http://localhost:3000/users/<user_id>/friends/<friend_id> --header "Accept: application/json" -d ''
```

#### Code: 201 created
#### Body List of friends

```json
[{"id":2,"facebook_id":"123","facebook_avatar":"foo","registered":null,"created_at":"2015-06-13T07:55:57.039Z","updated_at":"2015-06-13T07:55:57.039Z"},{"id":2,"facebook_id":"123","facebook_avatar":"foo","registered":null,"created_at":"2015-06-13T07:55:57.039Z","updated_at":"2015-06-13T07:55:57.039Z"}]```

### CREATE A RATING




