FROM nginx:1.10.1-alpine

# timezone
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata

COPY nginx.conf /etc/nginx/

CMD /usr/sbin/nginx -c /etc/nginx/nginx.conf