## Цель и задача

Показать разныe срезы латвийской статистики, например [смертность и ВВП](http://freakotistics.herokuapp.com/?chart1=5&chart2=10), [походы в кино и правонарушения](http://freakotistics.herokuapp.com/?chart1=18&chart2=19), [экспорт и психоческие заболевания](http://freakotistics.herokuapp.com/?chart1=6&chart2=25), [безработица и количество полученных дипломов](http://freakotistics.herokuapp.com/?chart1=6&chart2=25)

## Техническая сторона

[Sinatra](http://www.sinatrarb.com/) и [Heroku хостинг](http://heroku.com)

## Запустить

    git clone git@github.com:torbjon/freakotistics.git
    cd freakotistics
    bundle install
    shotgun app.rb
    open http://127.0.0.1:9393/
