FROM nginx:alpine

# Copy only the published site files — never mockups or private docs
COPY index.html /usr/share/nginx/html/
COPY WHV_Icon.png WHV_Icon.svg WHV_Logo_Final.png WHV_Logo_Final.svg /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/templates/default.conf.template

ENV PORT=80
EXPOSE 80

CMD ["sh", "-c", "envsubst '$PORT' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
