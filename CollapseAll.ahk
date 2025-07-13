; Скрипт для автоматического создания новой папки при запуске
#NoTrayIcon  ; Скрыть иконку из трея
#SingleInstance Off  ; Разрешить множественные запуски

; Получаем путь к рабочему столу
desktopPath := A_Desktop

; Базовое имя для папки
baseName := "Новая папка"

; Поиск уникального имени
uniqueName := baseName
counter := 0

Loop {
    If (!FileExist(desktopPath "\" uniqueName)) {
        break
    }
    counter++
    uniqueName := baseName " (" counter ")"
}

; Создаем папку
FileCreateDir, % desktopPath "\" uniqueName

; Завершаем скрипт
ExitApp
