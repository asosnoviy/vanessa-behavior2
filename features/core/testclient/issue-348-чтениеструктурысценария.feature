# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds



Функционал: Проверка парсинга фичи со структурой сценария

Как разработчик
Я хочу чтобы корректно происходил парсинг фичи со структурами сценария
Чтобы я мог их корректно читать

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка парсинга фичи, когда используется вертикальная черта
	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиСтруктурыСценария348"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	И в логе сообщений TestClient есть строка "Таблица параметров должна заканчиваться символом |"