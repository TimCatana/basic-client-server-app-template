# syntax=docker/dockerfile:1

########## Base Image (configure the image files) ##########

FROM node:14-alpine AS base

# image directory will be named 'app'
WORKDIR app

# Copy package files to root (copy them here for cache speed purposes)
COPY yarn.lock package.json ./

# Copy package files to frontend (copy them here for cache speed purposes)
COPY frontend/yarn.lock frontend/package.json ./frontend/

# Copy package files to backend (copy them here for cache speed purposes)
COPY backend/yarn.lock backend/package.json ./backend/

# Build dependencies for root
RUN yarn 

# Build dependencies for backend
WORKDIR ./backend
RUN yarn

# Build dependencies for frontend
WORKDIR ../frontend
RUN yarn

# Copy the rest of the code (that is not ignored by .dockerignore)
WORKDIR ..
COPY . .

FROM base AS start
EXPOSE 3000
# I like yarn, change to npm if you want
CMD [ "yarn", "run", "start" ] 
