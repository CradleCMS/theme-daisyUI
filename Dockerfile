FROM node:23-slim AS builder
ADD . .
WORKDIR .build
RUN npm i -D daisyui@4.12.14
RUN npm install -D @tailwindcss/typography
RUN npx postcss tailwind.css -o /tmp/output.css
