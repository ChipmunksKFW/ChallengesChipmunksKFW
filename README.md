# Application

## Intro

Muster Änderung - Quang

Es handelt sich um eine (ältere) "three-tier" Applikation mit frontend, api, database.
Für diesen Hackathon dient die Applikation nur als Mittel zum Zweck, und die Entwicklung an der Applikation steht hier **nicht** im Fokus. Aus DevOps Sicht ist es trotzdem relevant zu wissen, wie die Architektur der Applikation aussieht und welche Technologien eingesetzt werden, da ihr bei dem Deployment und den Operationstätigkeiten unterstützen sollt.

Ich bin ganz Deiner Meinung!

## Architektur und Verzeichnis Struktur

<img src="./application/docs/dobib.drawio.png">

Im `/application` Verzeichnis findet ihr drei Unterverzechnisse wieder.

- frontend - Das Web Frontend (Presentation Layer) in React geschrieben
- api - Die API (Logik Layer) in Node.js geschrieben
- db-seed - Eine Utility um die Datenbank zu befüllen

Die Datenbank selber ist wie ihr seht nicht als eigenes Verzechnis vorhanden, dass hat den Grund weil es aus Applikations Sicht egal ist wo die Datenbank ist. Gebräuchlich ist dass die Entwickler eine lokale Datenbank, in diesem Fall eine Mongo DB, hochfahren, als ein Container (wird in einer Challenge näher erläutert).

## Frontend

Die Applikation besteht im wesentlichen aus drei Seiten

- `/books` - Übersicht der Bücher und Verleihstatus
- `/books/:bookID` - Detail Seite eines Buches mit Button zum ausleihen und zurückgeben
- `/admin` - Admin Seite um Bücher zu verwalten

<img src="./application/docs/dobib.app.png">

##Comment

# Documentation

> Ihr könnt hier eure Dokumentation zu den Herausforderungen hinzufügen oder euch im Team auf eine eigene Dokumentations Struktur einigen

--

## Befehle zum Pushen der Docker Images

Wir pushen 4 Images: application_api, application_frontend, application_mongo-seed, mongo:5.

`docker tag <image_name>:<tag> chipmunks.azurecr.io/<image_name>:<tag>`
`docker push chipmunks.azurecr.io/<image_name>:<tag>`

die 4 sind so

docker pull chipmunks.azurecr.io/application_api:quang1
docker pull chipmunks.azurecr.io/application_frontend:quang1
docker pull chipmunks.azurecr.io/application_mongo-seed:quang1
docker pull chipmunks.azurecr.io/mongo:5