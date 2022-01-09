# Backend

- Uses ExpressJS framework
- I have included a `contest/test` route for the frontend to connect to (to ensure everything works)
- Running on port `4400`

# Frontend

- Uses React library
- Created using `create-react-app`
- I included a button that sends an http request to `<domain>:4400/contest/test`. You should see `got contest test` in your local machine console when clicked. This means it works
- running on port `3000`

# Docker

- I have included a `Dockerfile` which builds an image for this project. 
- The `Dockerfile` uses cache to optimize build times. The first build should take a while, but the rest will be quick (unless you modify any package.json or yarn.lock files)
- Don't delete the first line in the `Dockerfile`, it's not a comment. See Docker docs for more info
- I have included a `.dockerignore` file to exclude unnecessary and potentially harmful files. This makes the image safer, smaller and quicker.
- To build docker image, run `docker build -t my-app --target start .`

# Kubernetes

- I have included a few Kubernetes files to configure this app and a MongoDB database.
- The files will <b>not</b> run correctly because you need to configure it specifically for your app. I have included comments where you need to make additions
- I spent a lot of time figuring Kubernetes out... I have this here as kind of a trophy
- The Kubernetes cluster layout includes 2 domains in the ingress. One for frontend (client) and one for backend (server). I have experimented with another architecture where I used one domain and different ports... that was a horrible experience. Just stick with this layout. It works. The only downside is you need 2 domains.
- Ingresses run on two default ports: `80` and `443`. I believe `443` is the secure port protocol. Anyway, I have not found out how to run the ingresses on any other port, so keep ingresses at the default port `80`. All other ports (i.e. the `server` types) can use any valid port you want.

# How To Run

```
beginning in root directory:

yarn
cd frontend
yarn
cd ..
cd backend
cd yarn
cd ..
yarn run start
```
