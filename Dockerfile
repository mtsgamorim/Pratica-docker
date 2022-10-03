FROM node

WORKDIR /usr/src/

COPY . .

EXPOSE 5000

RUN npm install && npm run build && npx prisma migrate dev

CMD ["npm", "start"]