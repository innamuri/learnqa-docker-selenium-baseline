#!/usr/bin/env bash

docker pull selenoid/vnc_chrome:64.0

docker run -d                                   \
--name selenoid                                 \
-p 4444:4444                                    \
-v /var/run/docker.sock:/var/run/docker.sock    \
-v `pwd`/config/:/etc/selenoid/:ro              \
aerokube/selenoid:latest-release