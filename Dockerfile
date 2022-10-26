FROM bellsoft/liberica-runtime-container:jre-17-musl

WORKDIR /app

RUN apk add --no-cache \
    libstdc++ \
    libgcc \ 
    tini \
    nodejs \
    npm

COPY package.json package-lock.json ./

RUN npm install --omit=dev

COPY . .

EXPOSE 8000

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "index.js", "--no-open"]
