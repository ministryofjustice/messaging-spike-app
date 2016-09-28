#### Install Rabbit MQ and start it

```sh
brew install rabbitmq
brew services start rabbitmq
```

#### Start redis server

Redis is used in this proof of concept to simplify the retrieval of consumed messages via API.

```sh
redis-server
```

#### Start the app

In the app directory:

```sh
bundle
./cli start
```

#### Start Hutch

In the app directory:

```sh
hutch --config config/hutch.yml
```

#### Retrieving latest messages via API

**GET** to [http://localhost:3003/api/v1/messages](http://localhost:3003/api/v1/messages)

#### Publishing messages via API

**POST** to [http://localhost:3003/api/v1/messages](http://localhost:3003/api/v1/messages) with a JSON body containing the payload:

```json
{
  "payload": { }
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

#### Configuration

Hutch configuration file can be found in **config/hutch.yml**

App configuration can be found in **config/settings.yml** or in the config/settings/*.yml files

#### RabbitMQ Management Console

[http://localhost:15672](http://localhost:15672)

