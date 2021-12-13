# Kafka

## start kafka
```bash
docker-compose up -d
```

## stop kafka
```bash
docker-compose down
```

## verify logs
```bash
docker-compose logs -f kafka
```

## access container kafka
```bash
docker-compose exec kafka bash
```

## send message to kafka (process message in golang)
```bash
kafka-console-producer --bootstrap-server=localhost:9092 --topic=transactions
```

## read message from kafka (result message from golang)
```bash
kafka-console-consumer --bootstrap-server=localhost:9092 --topic=transactions_result
```

## transaction approved
```bash
{"id":"123","account_id":"321","credit_car_number":"4193523830170205","credit_card_name":"John Doe","credit_card_expiration_month":12,"credit_card_expiration_year":2022,"credit_card_cvv":123,"amount":900}
```

## transaction rejected
```bash
{"id":"123","account_id":"321","credit_car_number":"1111111111111111","credit_card_name":"John Doe","credit_card_expiration_month":12,"credit_card_expiration_year":2022,"credit_card_cvv":123,"amount":1200}
```

## result approved
```bash
{"id":"123","status":"approved","error_message":"you dont have limit"}
```

## result rejected
```bash
{"id":"123","status":"rejected","error_message":"invalid credit card number"}
{"id":"123","status":"rejected","error_message":"you dont have limit for this transaction"}
```
