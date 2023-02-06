FROM nginx:1.23-alpine

RUN rm -rf /usr/share/nginx/html/*
COPY default.conf /etc/nginx/conf.d/default.conf
COPY docs /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
