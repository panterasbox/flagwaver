#!/bin/bash

docker run -d -p 2090:8000 --name pbbanner registry.gitlab.com/panterasbox/pbbanner/panterasbox:%TAG%
