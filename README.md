# Open Message Board API

## What is it?

A simple API that does not require auth. It has message boards, and each message board has many messages

## Endpoints

- `GET /message_board` - returns a list of all message board names and IDs
- `POST /message_boards` - creates a new message board with a name
- `GET /message_boards/:id/messages` - returns all the messages for a given message board
- `POST /message_boards/:id/messages` - creates a new message on a message board with a given message
