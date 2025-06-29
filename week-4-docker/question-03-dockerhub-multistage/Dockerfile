# Stage 1 - Build Stage
FROM node:18 AS build-stage
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Stage 2 - Production Stage
FROM nginx:alpine
COPY --from=build-stage /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
