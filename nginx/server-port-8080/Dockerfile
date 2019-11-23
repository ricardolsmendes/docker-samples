FROM nginx:alpine
## Copy a new configuration file setting listen port to 8080
COPY ./config/default.conf /etc/nginx/conf.d/
## Expose port 8080
EXPOSE 8080
## Start nginx server
CMD ["nginx", "-g", "daemon off;"]
