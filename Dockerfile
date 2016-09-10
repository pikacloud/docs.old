FROM debian:8
RUN apt-get update && apt-get install -y nginx
COPY public /var/www/html/docs
EXPOSE 80
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log
CMD ["nginx", "-g", "daemon off;"]
