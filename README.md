Доска объявлений о поиске работы в IT

Фронтенд на bootstrap.

Версия 0.3

Для запуска:

1. Склонируйте репозиторий
2. Зайдите в папку проекта и выполните команды:
  
bundle exec bundle

bundle exec rake db:migrate

3. В проекте используется БД PostgreSQL. Перед запуском нужно настроить параметры базы данных данных, создав в папке config файл database.yml

4. Для корректной работы Bootstrap может понадобиться popper.js

Команда для установки:

yarn install popper.js

5. Для работы фоновых задач нужно локально запустить сервер Redis.

Когда все сделано, запускаем сервер 

rails s

и радуемся :)
