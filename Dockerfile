FROM node:22-alpine AS build
WORKDIR /app
RUN npm install -g @redocly/cli@2.65.0
COPY src/openAPI.yaml .
RUN redocly build-docs openAPI.yaml -o index.html

FROM nginx:alpine
COPY --from=build /app/index.html /usr/share/nginx/html/index.html
EXPOSE 80