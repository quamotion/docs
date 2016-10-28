#!/bin/bash

wget https://www.fontsquirrel.com/fonts/download/Aller -O Aller.zip
unzip Aller.zip -d ~/.fonts/

wget https://www.fontsquirrel.com/fonts/download/Ubuntu-Titling -O Ubuntu-Titling.zip
unzip Ubuntu-Titling.zip -d ~/.fonts/

cp Consolas.ttf ~/.fonts/

fc-cache ~/.fonts/

