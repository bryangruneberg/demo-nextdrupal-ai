#!/bin/sh

if [ ! -z "$LAGOON_ROUTE" ]; then
	echo "Hit the app at: $LAGOON_ROUTE"
fi

yarn dev


### Don't need no smartness
exit 0;
if [ $LAGOON_ENVIRONMENT_TYPE == "production" ]; then
	yarn preview
else
	yarn dev
fi
