FROM node:14-alpine
# ENV NODE_ENV=production
RUN apk add --no-cache git
WORKDIR /home
COPY ["./", "./"]
RUN npm install --silent && npm run make-dist && rm -rf node_modules
ADD scripts/ /opt/resource/
RUN chmod +x /opt/resource/*