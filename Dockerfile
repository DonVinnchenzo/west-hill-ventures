FROM nginx:alpine

# Copy only the published site files — never mockups or private docs
COPY index.html /usr/share/nginx/html/
COPY WHV_Icon.png WHV_Icon.svg WHV_Logo_Final.png WHV_Logo_Final.svg /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/templates/default.conf.template
# source files may carry owner-only permissions; nginx workers must be able to read them
RUN chmod -R a+rX /usr/share/nginx/html

ENV PORT=80
EXPOSE 80

CMD ["sh", "-c", "envsubst '$PORT' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
