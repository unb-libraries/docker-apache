# unblibraries/apache:alpine [![](https://badge.imagelayers.io/unblibraries/apache:alpine.svg)](https://imagelayers.io/?images=unblibraries/apache:alpine 'Get your own badge on imagelayers.io') [![Build Status](https://travis-ci.org/unb-libraries/docker-alpine.svg?branch=alpine)](https://travis-ci.org/unb-libraries/docker-alpine)
Docker container : leverages alpine to deploy a baseline Apache container.

## Repository Tags

|               Tag              | Size                                                                                                                                                                                 | Status                                                                                                                                               |
|:------------------------------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
|    unblibraries/apache:alpine   | [![](https://badge.imagelayers.io/unblibraries/apache:alpine.svg)](https://imagelayers.io/?images=unblibraries/apache:alpine 'Get your own badge on imagelayers.io')           | [![Build Status](https://travis-ci.org/unb-libraries/docker-alpine.svg?branch=alpine)](https://travis-ci.org/unb-libraries/docker-alpine)      |

## Usage
```
docker run \
       --rm \
       --name apache \
       -v /local/dir:/app/html \
       -p 80:80 \
       unblibraries/apache:alpine
```

## License
- unblibraries/apache is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Apache Docker Container by UNB Libraries`
