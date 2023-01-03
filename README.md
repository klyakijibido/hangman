# Игра "Виселица"
## Об игре
Программа-викторина, в которой нужно разгадать слово, последовательно вводя предполагаемые буквы.

Программа написана на языке Ruby.

## Запуск игры
Программа запускается из консоли, командой:
```
ruby main.rb
```
## Правила игры
Программа отображает случайное слово, в виде символов подчеркивания. Игроку нужно угадать слово, вводя предполагаемые 
буквы. Если буква есть в слове, она(они) отображается. У игрока есть возможность ошибиться семь раз. При вводе букв 
'е' и 'и', программа так же проверит наличие в слове букв 'ё' и 'й' соответственно.

## Конфигурирование
Вы можете изменять список доступных слов для игры, редактируя файл `data/words.txt`.

## Дополнительня информация
[на сайте Вики](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0))