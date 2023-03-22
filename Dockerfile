FROM node:16.17.0-alpine

WORKDIR /usr/src/app


# You only need to copy next.config.js if you are NOT using the default configuration
# COPY --from=builder /app/next.config.js ./

COPY . .

# RUN ls

# RUN pwd


RUN npm version

RUN npm install

RUN npm run build

EXPOSE 1337

ENV PORT 1337

# Next.js collects completely anonymous telemetry data about general usage.
# Learn more here: https://nextjs.org/telemetry
# Uncomment the following line in case you want to disable telemetry.
# ENV NEXT_TELEMETRY_DISABLED 1

CMD ["npm", "run","develop"]
