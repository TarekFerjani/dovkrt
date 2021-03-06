# Stage 1
2
3
FROM node:10-alpine as build
4
5
RUN mkdir -p /app
6
7
WORKDIR /app
8
9
COPY package.json /app
10
11
RUN npm install
12
13
COPY . /app
14
15
RUN npm run build --prod
16
17
 
18
19
# Web server 
20
21
FROM nginx:1.17.1-alpine
22
23
COPY --from=build /app/docs /usr/share/nginx/html
