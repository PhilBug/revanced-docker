# Revanced builder docker image

[![CircleCI](https://circleci.com/gh/PhilBug/revanced-docker.svg?style=svg)](https://app.circleci.com/pipelines/gh/PhilBug/revanced-docker)


Daily updated build of [revanced-builder](https://github.com/reisxd/revanced-builder).  

Running the image on http://localhost:8000:

```bash
docker run --rm --name revanced -p 8000:8000 philbug/revanced-builder:latest
```

or

```bash
docker run --rm --name revanced -p 8000:8000 philbug/revanced-builder:3.2.3
```



If you want to copy the apk file manually:

```bash
docker exec revanced sh -c "mv /app/revanced/ReVanced-YouTube-*.apk /ReVanced.apk"
docker cp revanced:/ReVanced.apk .
```
