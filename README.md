# 📂 One-Click Folder Creator

![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v1.1+-green) ![Платформа](https://img.shields.io/badge/Windows-7/8/10/11-blue) ![Портативный](https://img.shields.io/badge/Portable-EXE-success)

Программа для мгновенного создания папок на рабочем столе одним кликом! Не требует установки, работает в фоновом режиме сразу после запуска.

## ✨ Особенности

- ⚡ **Мгновенное создание** папки на рабочем столе
- 🔢 **Автоматическое именование** с нумерацией (Новая папка, Новая папка (2)...)
- ✅ **Проверка уникальности** - избегает дублирования имен
- 🚀 **Работает в фоновом режиме** без интерфейса
- 💾 **Портативный EXE-файл** - не требует установки
- ⏱️ **Экономия времени** - замена ручного создания папок

## 🚀 Как использовать

1. Скачайте файл [Folder.exe]([))
2. Запустите программу двойным кликом
3. Папка автоматически создается на рабочем столе!
4. Повторный запуск создает новую папку с увеличенным номером

## 📦 Скачать

Последняя версия: [Folder.exe]([[https://github.com/yourusername/one-click-folder/releases/latest](https://example.com/CreateFolder.exe](https://github.com/wulkan-Git/Folder/releases/tag/Folder](https://github.com/wulkan-Git/Folder/releases)))

## ⚙️ Технические детали

### Алгоритм работы:
1. Определяет путь к рабочему столу текущего пользователя
2. Генерирует базовое имя "Новая папка"
3. Проверяет существование папок с таким именем
4. При необходимости добавляет нумерацию (2), (3)...
5. Создает папку через FileCreateDir
6. Автоматически завершает работу

### Исходный код (AutoHotkey):
```ahk
#NoEnv
#SingleInstance, Off
SetWorkingDir, %A_ScriptDir%

desktopPath := A_Desktop
baseName := "Новая папка"
counter := 1
newFolder := desktopPath . "\" . baseName

While FileExist(newFolder)
{
    counter++
    newFolder := desktopPath . "\" . baseName . " (" . counter . ")"
}

FileCreateDir, %newFolder%
ExitApp
