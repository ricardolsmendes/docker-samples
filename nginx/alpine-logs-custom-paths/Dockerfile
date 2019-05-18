FROM nginx:alpine
## Copy a new configuration file setting logs base dir to /var/server-logs/nginx
COPY ./config/nginx.conf /etc/nginx/
## Create the new /var/server-logs/nginx folder
RUN mkdir /var/server-logs
RUN mkdir /var/server-logs/nginx
## Start nginx server
CMD ["nginx", "-g", "daemon off;"]
