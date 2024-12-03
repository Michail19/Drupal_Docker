# Используем официальный образ Drupal
FROM drupal:10.1.2-apache

# Устанавливаем зависимости, если нужно
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    && apt-get clean

# Копируем проект
# COPY ./src /var/www/html

# Указываем порты
EXPOSE 80
