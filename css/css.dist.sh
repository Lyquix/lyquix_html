#!/bin/bash
###
#
# css.dist.sh - Bash script to process SCSS files, run autoprefixer, and chunk files
#
# @version     2.3.1
# @package     lyquix_html
# @author      Lyquix
# @copyright   Copyright (C) 2015 - 2018 Lyquix
# @license     GNU General Public License version 2 or later
# @link        https://github.com/Lyquix/lyquix_html
#
###

# Get script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
cd $DIR

npx sass ./styles.scss > ./styles.css
npx postcss -u autoprefixer -b \"\> 0.5%, last 3 versions\" -r ./styles.css
npx uglifycss ./styles.css > ./styles.min.css
