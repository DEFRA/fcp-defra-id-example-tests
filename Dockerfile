FROM node:22

WORKDIR /home/node

RUN npx playwright install --with-deps

COPY --chown=node:node package*.json ./
RUN npm install --ignore-scripts
COPY --chown=node:node . .

CMD [ "npm", "test" ]
