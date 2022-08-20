FROM bellsoft/liberica-openjdk-alpine:17

WORKDIR /app

ENV NODE_VERSION=18.7.0

RUN apk add --no-cache \
  libstdc++ \
  libgcc \ 
  tini && \
  wget -q --no-check-certificate \
  "https://unofficial-builds.nodejs.org/download/release/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64-musl.tar.xz" && \
  tar -xJf node-v${NODE_VERSION}-linux-x64-musl.tar.xz -C /usr/local --strip-components=1 --no-same-owner && \
  rm -f node-*.xz

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 8000

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "index.js"]
