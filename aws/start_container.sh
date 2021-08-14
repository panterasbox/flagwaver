#!/bin/bash

docker run -d -p 2090:8000 --name flagwaver registry.gitlab.com/panterasbox/pbbanner/panterasbox:%TAG%
