FROM node:10.16.0-alpine

WORKDIR /app

RUN yarn global add create-react-app && create-react-app frontend && cd frontend && yarn build && yarn global add serve

CMD ["serve", "-s", "/app/frontend/build"]
