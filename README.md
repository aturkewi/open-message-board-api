# Open Message Board API

## What is it?

A simple API that does not require auth. It has message boards, and each message board has many messages

## Endpoints

- `GET /message_board` - returns a list of all message board names and IDs
 - Example return:
 ```json
 [
  {
    "id": 1,
    "name": "Westworld"
  },
  {
    "id": 2,
    "name": "Game of Thrones"
  }
 ]
 ```
- `POST /message_boards` - creates a new message board with a name and returns all message boards
 - Example body:
 ```json
 {"message_board": {"name": "Westworld"}}
 ```
 - Example return:
 ```json
 {
  "results": {
    "name": "Westworld",
    "id": 1,
    "message": "Message board created"
  },
  "status": 200
 }
 ```
- `GET /message_boards/:message_board_name/messages` - returns all the messages for a given message board
 - Example return:
 ```json
 [
  {
    "id": 1,
    "user_name": "avidor",
    "content": "This is the best show ever!",
    "message_board_id": 1,
    "created_at": "2016-11-19T16:21:28.559Z"
  },
  {
    "id": 2,
    "user_name": "avidor",
    "content": "Can't wait to see what comes next",
    "message_board_id": 1,
    "created_at": "2016-11-19T16:24:57.824Z"
  }
 ]
 ```
- `POST /message_boards/:message_board_name/messages` - creates a new message on a message board with a given message
 - Example body POST to `/message_boards/Westworld/messages`:
 ```json
 {"message": {"user_name": "avidor", "content": "This is the best show ever!"}}
 ```
 - Example return:
 ```json
 {
  "results": {
    "user_name": "avidor",
    "id": 1,
    "content": "This is the best show ever!",
    "message_board": "Westworld",
    "message": "Message created!"
  },
  "status": 200
 }
 ```
