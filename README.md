# Rooms Chats in Rails
This repository contains a Rails web application to create chat rooms for real-time conversations between users. It is possible to create, join and chat in several chat rooms simultaneously.

# Requirements
> Ruby 3.2.1<br>
> Rails 7.0.4.3<br>
> redis
# License
This project is licensed under the MIT license. See the LICENSE file for more information.
# Installation
Clone this repository to your local machine.
Make sure you have Redis installed and running on your machine.
Install dependencies by running the bundle install command.
Create the database with the ```rails db:create``` command.
Perform database migrations with the ```rails db:migrate``` command.
Start the development server with the ```rails s``` command.
Access the application at http://localhost:3000.
### Usage
1. Create a user account.
2. Create a new chat room.
3. Share the room code with other users so they can join.
4. Start chatting in real time.
## Contributing
1. fork the project
2. create your feature branch 
```sh
git checkout -b feature/AmazingFeature
```
3. commit your changes
```sh
git commit -m 'Add some AmazingFeature'
```
4. push to the branch 
```sh
git push origin feature/AmazingFeature
```
5. open a pull request
