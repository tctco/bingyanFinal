FROM alpine:latest
ADD . /code
WORKDIR /code/onlineShopping
CMD ["go", "run", "main.go"]