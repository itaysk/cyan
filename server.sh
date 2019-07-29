#! /bin/sh
hostname=$(hostname)
while true; do
    out=$(printf '%s\n%s\n%s' \
        "HTTP/1.1 200 OK\nContent-Type: text/html\n" \
        "$(cat index.html)" \
        "$hostname")
    echo -e "$out" | nc -v -l -p 8080
done