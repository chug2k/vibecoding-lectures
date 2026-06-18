# Vibe Coding lecture decks — a fully static site served by nginx.
# Dokploy builds this from the repo and Traefik routes to port 80.
FROM nginx:1.27-alpine

# Replace nginx's default welcome page with the deck site.
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

EXPOSE 80
