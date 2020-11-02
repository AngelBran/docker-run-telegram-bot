# Docker run telegram bot

Create containers to run your telegram bot using python 3, with the help of docker compose and Dockerfile

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
 
 - Docker compose
 - Create or copy a file called **requirement.txt** in the root of the project that contains all the libraries necessary for the bot operation, separated by newlines.
 - Create a subfolder will contain the python file or you can also clone a repository in the root directory
 
### Installing

Clone and enter the folder

```
git clone https://github.com/AngelBran/docker-run-telegram-bot.git
cd docker-run-telegram-bot
```

Having the bot folder, just edit the docker-compose.yml file and rename your-folder and the your-bot.py to the names corresponding to your project.

Example:

```
volumes:
  - ./telegram-rss-bot:/home/user/app
command: python -u /home/user/app/telegram-rss-bot.py --interval 60
```

Create docker container

```
docker-compose up --build
```

Create docker container in background

```
docker-compose up -d --build
```

Stop docker container

```
docker-compose stop
```

Start docker container

```
docker-compose start
```

Show logs

```
docker-compose logs
```
