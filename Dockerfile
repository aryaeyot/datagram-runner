FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    wget curl ca-certificates \
    && chmod +x /app/datagram-cli-x86_64-linux

COPY . .

CMD ["./datagram-cli-x86_64-linux", "run", "--8d5e98fc240be7b001ab2df3455f604b"]
