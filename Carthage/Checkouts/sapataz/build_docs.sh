#!/bin/bash

# Docs by jazzy
# https://github.com/realm/jazzy
# ------------------------------

jazzy \
    --clean \
    --author 'Jorge Moura' \
    --author_url 'http://www.jjorgemoura.com' \
    --github_url 'https://github.com/jjorgemoura/sapataz' \
    --module 'sapataz' \
    --source-directory . \
    --readme 'README.md' \
    --theme apple \
    --output docs/ \
