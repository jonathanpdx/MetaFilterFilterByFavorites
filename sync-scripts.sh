#!/bin/sh

# Utility script for copy changes during development

# For ease of development, run fswatch to copy over changes automatically
# fswatch -o ~/work/greasemonkey/metafilter/mefi_favorites.user.js | xargs -n1 -I{} ~/work/greasemonkey/metafilter/sync-scripts.sh

# Copy changes to test dir
rsync -avz /Users/jonathangordon/work/greasemonkey/metafilter/mefi_favorites.user.js  ~/Sites/metafilter/www/

# Copy changes to Firefox profile dir
rsync -avz /Users/jonathangordon/work/greasemonkey/metafilter/mefi_favorites.user.js  ~/Library/Application\ Support/Firefox/Profiles/wpwqefd5.default/gm_scripts/MetafilterFilterByFavorites/mefi_favorites.user.js
