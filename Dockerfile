FROM nginx:stable-alpine

# Copy the pre-built static site from `lib/` into nginx's html directory
COPY ./lib /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
