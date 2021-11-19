FROM nginx 
COPY nginx.conf /etc/nginx/nginx.conf 
COPY ./src/dist /usr/share/nginx/html 