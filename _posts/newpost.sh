#!/bin/bash
set -euo pipefail

date=$(date +"%Y-%m-%d")
current_date_time="`date "+%Y-%m-%d %H:%M:%S %z"`";
title=$(echo "$@" | tr "[:upper:]" "[:lower:]" | tr " " -)

cat >> "$date-$title.md" << EOF
---
layout: post
title: $@
date: $current_date_time
categories: 
tags: []
---
EOF
