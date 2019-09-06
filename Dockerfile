FROM alpine:latest AS git

RUN apk add --no-cache git
RUN git clone --branch gh-pages --depth 1 https://github.com/keeweb/keeweb
RUN rm -r keeweb/.git

FROM nginx:alpine
WORKDIR /opt/keeweb
COPY --from=git /keeweb /usr/share/nginx/html
EXPOSE 80