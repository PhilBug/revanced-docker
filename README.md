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
docker cp revanced:/app/revanced/ReVanced-YouTube-v17.32.35-cli_v2.9.3.jar-patches_v2.39.0.apk .
```
