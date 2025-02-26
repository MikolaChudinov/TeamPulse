# Используем официальный образ Node.js 18
FROM node:18

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем TypeScript проект
RUN npm run build

# Открываем порт (если используется NestJS, обычно 3000)
EXPOSE 3000

# Команда запуска сервера
CMD ["npm", "run", "start"]

