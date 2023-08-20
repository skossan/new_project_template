# Dependencies
FROM node:16-alpine AS dependencies
WORKDIR /dependencies
COPY ./client/package.json ./client/package-lock.json ./
RUN npm install --frozen-lockfile

# Builder
FROM node:16-alpine AS builder
WORKDIR /builder

COPY ./client ./client/
COPY --from=dependencies /dependencies/node_modules ./client/node_modules
RUN npm run build --prefix client

# Runner
FROM nginx:alpine AS runner
COPY --from=builder /builder/client/dist /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]