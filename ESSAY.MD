## Реферат по предмету "Инфорационные технологии" на тему "Архитектура высоконагруженных систем"
### Подготовили: 
### Свидрицкий Влад (email)
### Бятов Сергей (biatov.s@gmail.com)
# Thrift
* * * 
    Thrift - это легкий, не зависящий от языка программный стек с соответствующим механизмом генерации кода
    для RPC. Thrift предоставляет чистые абстракции для передачи данных, сериализации данных и обработки
    уровня приложения. Thrift был первоначально разработан Facebook, и теперь он открыт в качестве проекта
    Apache. Apache Thrift - это набор инструментов генерации кода, который позволяет разработчикам создавать 
    RPC-клиенты и серверы, просто определяя типы данных и интерфейсы служб в файле простого определения. 
    Учитывая этот файл как входной код, создается код для создания клиентов и серверов RPC, которые легко 
    взаимодействуют между языками программирования. Thrift поддерживает множество языков, включая C ++, Java, 
    Python, PHP, Ruby. 
![Image](http://thrift-tutorial.readthedocs.io/en/latest/_images/Apache_Thrift_architecture.png "Просмоты всего")
# IAGO
* * *
    Iago - это прежде всего библиотека генерации нагрузки. Он предназначен для инженеров-программистов, 
    знакомых с JVM-языками, такими как Java или Scala.
    Яго точно реплицирует производственный трафик. Он моделирует открытые системы, системы, которые получают 
    запросы независимо от их способности обслуживать их. Типичные генераторы нагрузки измеряют время, которое т
    ребуется для потоков M для выполнения N запросов, ожидая ответа на каждый запрос перед отправкой следующего; 
    Если ваша система замедляется под нагрузкой, эти нагрузочные тестеры таким образом милостиво замедляют свой 
    темп, чтобы соответствовать. Это замечательная вещь для измерения; Многие системы ведут себя так. Но, может 
    быть, ваша служба не такая система; Возможно, он выставлен в Интернете. Возможно, вы хотите знать, как ваша 
    система ведет себя, когда N запросов в секунду приходит без «милосердия», если она замедляется.
    Iago сосредотачивается на запросах в секунду и имеет встроенную поддержку статистических моделей, таких как 
    экспоненциальное распределение (используется для моделирования Пуассоновского процесса) и равномерных 
    распределений.
    Iago поддерживает произвольно высокие скорости трафика с помощью встроенной поддержки для создания кластеров:
    если один компьютер не может создать необходимую нагрузку, Iago может запускать задания на других машинах. 
    В Twitter инженеры регулярно запускают тесты нагрузки, которые генерируют более 100 тыс. Запросов в секунду 
    и более. Отдельные экземпляры Iago могут легко достигать от 1K до 10K rps от товарного оборудования, 
    ограничиваясь только конкретными требованиями вашего протокола.
# REDIS
***
    Redis является открытым исходным кодом (лицензия BSD), хранилище данных в памяти, используемое в качестве 
    базы данных, кэша и брокера сообщений . Он поддерживает структуры данных, такие как строки, хэши, списки, 
    наборы, отсортированные наборы с запросами диапазона, растровые изображения, гиперлогологи и 
    геопространственные индексы с радиус- запросами. Redis имеет встроенную репликацию, Lua-скриптинг, 
    выключение LRU, транзакции и различные уровни настойчивости на диске, а также обеспечивает высокую
    доступность через Redis Sentinel и автоматическое разбиение на разделы с помощью Redis Cluster. Есть 
    возможность запускать атомарные операции над этими типами, например, добавлять к строке ; Увеличение 
    значения в хеше ; Нажатие элемента на список ; Пересечение вычислительных множеств, объединение и разность; 
    Или получение члена с наивысшим рейтингом в отсортированном наборе. Для достижения своей выдающейся 
    производительности Redis работает с набором данных в памяти . В зависимости от вашего варианта использования
    вы можете сохранить его либо путем временного сброса набора данных на диск , либо путем добавления каждой 
    команды в журнал. Стойкость может быть необязательно отключена, если вам нужен полноценный, сетевой, 
    встроенный кэш. Redis также поддерживает тривиально-настраиваемую асинхронную репликацию master-slave с 
    очень быстрой неблокирующей первой синхронизацией, автоматическое пересоединение с частичной 
    ресинхронизацией по сетевому расщеплению. Redis написан на ANSI C и работает в большинстве POSIX-систем,
    таких как Linux, * BSD, OS X без внешних зависимостей. Linux и OS X - это две операционные системы, в 
    которых Redis разрабатывается и тестируется, и мы рекомендуем использовать Linux для развертывания . 
    Redis может работать в системах Solaris, таких как SmartOS, но поддержка - это лучшее усилие . Официальной
    поддержки сборок Windows не существует, но Microsoft разрабатывает и поддерживает порт Win-64 Redis.
# AMAZON
***
    Amazon Simple Queue Service (SQS) – полностью управляемый сервис очередей сообщений, позволяющий легко 
    изолировать и масштабировать микросервисы, распределенные системы и бессерверные приложения. Одна из 
    современных рекомендаций по разработке ПО – создание архитектуры, в которой каждый отдельный компонент 
    решения выполняет свою конкретную задачу. Такой подход позволяет повысить масштабируемость и надежность 
    итоговой системы. SQS позволяет легко и экономично изолировать компоненты облачного приложения и 
    координировать их работу. С помощью SQS можно отправлять, хранить и получать сообщения компонентов ПО 
    в любом масштабе без потери сообщений и необходимости обеспечивать постоянную доступность других сервисов. 
    Стандартные очереди SQS обеспечивают максимальную пропускную способность, «наилучшее из возможного» 
    упорядочение и доставку сообщений по принципу «хотя бы один раз». Очереди FIFO SQS с ограниченной 
    пропускной способностью гарантируют, что сообщения будут обрабатываться строго однократно и исключительно
    в порядке отправления. Начать работу с SQS можно всего за несколько минут с помощью Консоли AWS или 
    выбранного SDK и всего трех простых команд. SQS позволяет забыть про сложности и дополнительные расходы, 
    связанные с управлением и обслуживанием выделенного ПО и инфраструктуры обработки очередей сообщений.
# KESTREL
*** 
    Kestrel - очень простая очередь сообщений, которая работает на JVM. Он поддерживает несколько протоколов:
    - Memcache: протокол memcache с некоторыми расширениями
    - Бережливость: RPC Apache
    - Текст: простой текстовый протокол
    Один сервер Kestrel имеет набор очередей, идентифицированных по имени, который также является именем файла 
    журнала журнала этой очереди (обычно в / var / spool / kestrel). Каждая очередь представляет собой строго
    упорядоченный FIFO «элементов» двоичных данных. Обычно эти данные находятся в каком-то сериализованном 
    формате, таком как формат JSON или рубинового маршала.
    Обычно имена очереди должны быть ограничены буквенно-цифровыми [A-Za-z0-9], тире (-) и подчеркиванием (_).
    На практике kestrel не применяет никаких ограничений, кроме имени, не может содержать слэш (/), потому
    что это невозможно использовать в именах файлов, squiggle (~), потому что оно используется для временных
    файлов плюс (+), потому что оно используется Для очередей разветвления и точки (.), Поскольку он 
    зарезервирован для будущего использования. Имена очередей чувствительны к регистру, но если вы используете 
    kestrel на OS X или Windows, вы захотите воздержаться от использования этого, так как имена файлов журналов
    на этих двух платформах не чувствительны к регистру.
    Кластер серверов kestrel похож на кластер memcache: серверы не знают друг о друге и не выполняют никаких 
    кросс-коммуникаций, поэтому вы можете добавить столько, сколько хотите. Простейшие клиенты имеют список 
    всех серверов в кластере и выбирают один случайным образом для каждой операции. Таким образом, каждая 
    очередь оказывается разбросанной по каждому серверу с элементами в свободном порядке. Более продвинутые 
    клиенты могут найти серверы kestrel через ZooKeeper.
    Когда kestrel запускается, она сканирует папку журнала и создает очереди на основе любых файлов журналов,
    которые она там находит, чтобы восстановить состояние так, как оно было при последнем завершении (или 
    было убито или умерло). Новые очереди создаются путем обращения к ним (например, добавление или попытка 
    удалить элемент). Очередь может быть удалена командой «удалить».