#!/bin/bash
###
#
# js.dist.sh - Shell script to concatenate and minify lyquix Javascript library, and vue components/controllers
#
# @version     2.3.1
# @package     lyquix_html
# @author      lyquix
# @copyright   Copyright (C) 2015 - 2018 Lyquix
# @license     GNU General Public License version 2 or later
# @link        https://github.com/lyquix/lyquix_html
#
###

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
cd $DIR

# Lyquix
cat ./lib/core.js > ./lyquix.js
MODULES=("string" "util" "detect" "mutation" "fixes" "store" "geolocate" "analytics" "responsive" "accordion" "autoresize" "menu" "tabs" "fittext" "lyqbox" "popup" "map")
for MOD in "${MODULES[@]}"
do
	cat ./lib/$MOD.js >> ./lyquix.js
done
npx jshint ./lyquix.js --verbose
npx babel --presets env --no-comments --compact --minified --comments false ./lyquix.js > ./lyquix.min.js


# Vue
if [[ -n $(find ./custom/components ./custom/controllers -name '*.js' -not -name '*.dist.js') ]]; then
	npx wget -O- -q https://cdnjs.cloudflare.com/ajax/libs/vue/2.3.1/vue.js > ./vue.js
	npx wget -O- -q https://cdnjs.cloudflare.com/ajax/libs/vue/2.3.1/vue.min.js > ./vue.min.js
fi
if [[ -n $(find ./custom/components -name '*.js' -not -name '*.dist.js') ]]; then
	find ./custom/components -name '*.js' -not -name '*.dist.js' -exec cat {} + >> ./vue.js
	find ./custom/components -name '*.js' -not -name '*.dist.js' -exec cat {} + >> ./vue.min.js
fi
if [[ -n $(find ./custom/controllers -name '*.js' -not -name '*.dist.js') ]]; then
	find ./custom/controllers -name '*.js' -not -name '*.dist.js' -exec cat {} + >> ./vue.js
	find ./custom/controllers -name '*.js' -not -name '*.dist.js' -exec cat {} + >> ./vue.min.js
fi
if [ -f ./vue.js ]; then
	npx jshint ./vue.js --verbose
	mv vue.min.js vue.min.tmp.js
	npx babel --presets env --no-comments --compact --minified ./vue.min.tmp.js > ./vue.min.js
	rm vue.min.tmp.js
fi

# Scripts
if [ -f ./scripts.core.js ]; then
	cat ./scripts.core.js > ./scripts.js
	if [[ -n $(find ./custom/scripts -name '*.js' -not -name '*.dist.js') ]]; then
		find ./custom/scripts -name '*.js' -not -name '*.dist.js' -exec cat {} + >> ./scripts.js
	fi
	npx jshint ./scripts.js --verbose
	npx babel --presets env --no-comments --compact --minified --comments false ./scripts.js > ./scripts.min.js
fi
