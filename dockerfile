FROM Nginx:latest
RUN rm -rf /usr/share/ngnix/html/*
COPY . /usr/share/ngnix/html
EXPOSE 80
CMD ["ngnix", "-g", "daemon off;"]