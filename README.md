# vteam-example-root-repo

Förslagsvis så representerar detta "root-repot". Jag tänker att det faller sig naturligt att backend tillsammans med databasen ligger tillsammans då man troligen kan jobba med de parallellt utan att de påverkar varandra.

## Individuella repon

De individuella repon som läggs till behöver ha liknande strukturer för att göra det enklare att koppla ihop och starta de via docker-compose. I detta repot så hämtas MariaDB i docker-compose, och följer inte samma struktur som de andra repon gör. Exakt vilken väg man väljer att gå med just databasen tror jag inte behöver bestämmas i startskedet, utan man kan se allt eftersom vad som verkar smidigast/smartast.

Exempel på de individuella repona:

- https://github.com/p0ntan/vteam-example-simple-map
- https://github.com/p0ntan/vteam-example-bike

## Sätta ihop och starta systemet
I detta repo ligger ett bash-skript, man kan starta hela systemet med:

```
./setup.bash up
```

Vilket laddar ner alla repon som behövs (2 i detta fallet), och sedan startar igång hela systemet och lägger de olika delarna i olika docker containrar. För att sedan stänga ner allt kör man:

```
./setup.bash down
```

Som i sin tur stänger ner nätverket, tar bort containrar och images (förutom mariadb i just det här repot) och sedan tar bort de repon som laddades ner. Detta är bara ett exempel, och vill man göra på annat sätt senare så kan man ju självklart det. Detta är ju bara för att visa hur man kan jobba i separata repon.
