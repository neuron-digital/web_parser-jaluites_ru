## web_parser-jaluites_ru

##### gem для получения информации о жалобах с портала http://jaluites.ru
---

### Установка

1\. Подключить гем в Gemfile

```ruby
gem 'web_parser-jaluites_ru', git: 'git@git.nnbs.ru:gem/web_parser-jaluites_ru.git', tag: 'v0.0.1'
```

В качестве тега, возможно, потребуется указать более свежую версию. Последняя версия на момент написания данного файла «v0.0.1»

2\. Выполнить команду в терминале 

```bash
$ bundle
```

### Использование

Для получения последних жалоб

```ruby
WebParser::JaluitesRu.last_publications
```

###### **This project rocks and uses MIT-LICENSE.**