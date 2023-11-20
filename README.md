# vteam-example-root-repo

Förslagsvis så representerar detta "root-repot". Jag tänker att det faller sig naturligt att backend tillsammans med databasen ligger tillsammans då man troligen kan jobba med de parallellt utan att de påverkar varandra.

## Individuella repon

De individuella repon som läggs till behöver ha liknande strukturer för att göra det enklare att koppla ihop och starta de via docker-compose. I detta repot så hämtas MariaDB i docker-compose, och följer inte helt samma struktur som de andra repon gör. Exakt vilken väg man väljer att gå med just databasen tror jag inte behöver bestämmas i startskedet, utan man kan se allt eftersom vad som verkar smidigast/smartast.

Exempel på de individuella repona:

- https://github.com/p0ntan/vteam-example-simple-map
- https://github.com/p0ntan/vteam-example-bike

Vill man så kan man ha ett root repo som inte innehåller någonting alls förutom "setup"-filer, och låta alla repon vara submodules. En fördel med det är att det blir ju en ännu tydligare gräns mellan olika delar och att det kan bli enklare att köra tester/CI-kedja på endast express-servern t ex.

## Sätta ihop och starta systemet
I detta repo ligger ett bash-skript, man kan starta hela systemet med:

```
./setup.bash up
```
Vilket startar alla delar och sätter upp det på ett sådant sätt så att imagen till databasen sparas men att de andra kommer att tas bort när man stänger ner systemet. Vilket görs med:

```
./setup.bash down
```
Som städar upp alla images, containrar och stänger ner nätverket.
