FROM nginx

COPY assets /usr/share/nginx/html/assets
ADD index.html /usr/share/nginx/html/
