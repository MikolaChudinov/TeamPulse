# Используем официальное Node.js-окружение
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы package.json и package-lock.json перед установкой зависимостей
COPY package*.json ./
RUN npm install

# Копируем все файлы проекта
COPY . .

# Собираем проект NestJS
RUN npm run build

# Команда для запуска сервера
CMD ["npm", "run", "start"]

