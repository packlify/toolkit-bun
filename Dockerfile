FROM oven/bun as base

WORKDIR /usr/src/app

COPY package.json ./
COPY bun.lockb ./

RUN bun install

COPY . .

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

ENTRYPOINT [ "bun", "start" ]
