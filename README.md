# vteam-example-root-repo

Förslagsvis så representerar detta "root-repot". Jag tänker att det faller sig naturligt att backend tillsammans med databasen ligger tillsammans då man troligen kan jobba med de parallellt utan att de påverkar varandra.

## Individuella repon

De individuella repon som läggs till behöver ha liknande strukturer för att göra det enklare att koppla ihop och starta de via docker-compose.

Exempel på de individuella repona:

- https://github.com/p0ntan/vteam-example-simple-map
- https://github.com/p0ntan/vteam-example-bike
- https://github.com/p0ntan/vteam-example-server

## Klona repot

Klonar man repot med kommandot:

```
git clone <url>
```
Hämtas repot ner, men mapparna till alla submoduler kommer vara tomma. Använder man istället:
```
git clone --recursive https://github.com/p0ntan/vteam-example-root-repo.git
```
Klonas även alla submoduler. Värt att nämna är att de är frånkopplade från sin egen main-branch när de läggs till, något att tänka på om man börjar jobba med en submodul.

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
