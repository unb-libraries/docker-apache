# unblibraries/apache [![](https://badge.imagelayers.io/unblibraries/apache:latest.svg)](https://imagelayers.io/?images=unblibraries/apache:latest 'Get your own badge on imagelayers.io')
Docker container : leverages phusion/baseimage to deploy a baseline Apache container.

## Usage
```
docker run \
       --rm \
       --name apache \
       -v /local/dir:/var/www/html \
       -p 80:80 \
       unblibraries/apache
```

## License
- unblibraries/apache is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Apache Docker Container by UNB Libraries`

## Credit
- Original work for this container was based on that of [Ed Borras](https://bitbucket.org/EdBoraas/apache-docker).