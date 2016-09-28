#### Install Rabbit MQ and start it

```sh
brew install rabbitmq
brew services start rabbitmq
```

#### Start redis server

```sh
redis-server
```

#### Start the app

In the app directory:

```sh
bundle (only once)
./cli start
```

#### Start Hutch

```sh
hutch --config config/hutch.yml
```

#### RabbitMQ Management Console

[http://localhost:15672](http://localhost:15672)

#### Publishing messages via API

POST to [http://localhost:3003/api/v1/messages](http://localhost:3003/api/v1/messages) with a JSON body containing the payload in the format:

```json
{
  "payload": {
    ...
  }
 }
```

Example:

```json
{
  "payload": {
    "name": "John Connor"
  }
}
```

#### Retrieving latest messages via API

GET to [http://localhost:3003/api/v1/messages](http://localhost:3003/api/v1/messages)


#### Configuration

Hutch configuration file can be found in config/hutch.yml

App configuration can be found in config/settings.yml or in the config/settings/*.yml files


