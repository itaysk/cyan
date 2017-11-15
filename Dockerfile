FROM alpine
copy . /app
WORKDIR /app
EXPOSE 8080
CMD ["sh","./start.sh"]
