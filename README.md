# True-Dobrograd-Installer
 Быстрый установщик сборки Доброграда.
 
# Что делать?

**Кинуть install.bat в GarrysModDS**

Для работы необходимо установить:

1. [Node.js](https://learn.microsoft.com/ru-ru/windows/dev-environment/javascript/nodejs-on-windows)
2. [Git](https://github.com/git-for-windows/git/releases/download/v2.45.0.windows.1/Git-2.45.0-64-bit.exe)

# Про базу данных:

Для работы сборки необходимо установить MySQL-сервер.
Для этого рекомендую прочитать [гайд](https://wiki.octothorp.team/ru/code/mysql) от Octothorp Team

# Сам гайд по установке MySQL-сервера (Немного изменён)

Наши сервера используют дистрибуцию MariaDB.

1. Скачай последний стабильный релиз по ссылке.
2. Запусти установщик.
3. Тебе предложат выбрать компоненты, которые нужно установить. В рамках разработки достаточно будет конфигурации на скриншоте ниже. Обрати внимание, что помимо сервера мы также устанавливаем HeidiSQL. Это программа для взаимодействия с сервером, она нам понадобится в будущем.

![alt-skibidi](https://i.imgur.com/yN64ieC.png "MariaDB")

4. На следующем шаге тебе предложат указать пароль от главного аккаунта сервера (имеет полный доступ). В рамках работы с локальной базой данных рекомендуется этого не делать. Сервер будет использоваться только тобой, и если ты не будешь указывать пароль, не придется ничего настраивать дополнительно. Не забудь также поставить галочку напротив «Use UTF8 as default server’s character set»

![alt-SS](https://i.imgur.com/0GJAk0P.png "MariaDB")

5. На следующем шаге чаще всего менять ничего не нужно:

![alt-SSS](https://i.imgur.com/DbUFw2v.png "MariaDB")

6. Наконец, дождись окончания установки. После этого установщик можно закрыть.

# Первое подключение
  
После установки сервера у тебя должен был установиться HeidiSQL - интерфейс для взаимодействия с базами данных. Если этого не произошло, скачай и установи ее по [ссылке](https://www.heidisql.com/download.php).

   ![alt-SSSs](https://i.imgur.com/WQDksXC.png "MariaDB")

Запусти ее.

В открытой программе нажми «New»:

![alt-SSSs2](https://i.imgur.com/hLweTHK.png "MariaDB")

В разделе «Settings» укажи следующие параметры:

| Параметр      | Значение                 |
| ------------- |:------------------------:|
| Network type  | MariaDB or MySQL (TCP/IP)|
| Library       | libmariadb.dll           |
| Hostname / IP | 127.0.0.1                |
| User          | root                     |
| Password      |                          |
| Port          | 3306                     |

![alt-SSSs3](https://i.imgur.com/UXceS9S.png "MariaDB")

Затем сохрани (Save) и выполни вход (Open).

## Настройка

Сразу после установки сервера и первом подключении к нему интерфейс HeidiSQL выглядит так:

![alt-SSSs21](https://i.imgur.com/6NJNklm.png "MariaDB") 

Все таблицы должны содержаться в конкретной базе данных. У нас эта база данных - gmod_dobrograd, нужно её создать:

![alt-SSSs2s22](https://i.imgur.com/jIBYdyO.png "MariaDB") 

![alt-SSSs22322](https://i.imgur.com/qRuQWaT.png "MariaDB")  

После этого можно запустить сервер. Модули, которым это нужно, создадут необходимые таблицы автоматически.

![alt-SSSs22322](https://i.imgur.com/4CT5VIx.png "MariaDB")

**Готово!**

