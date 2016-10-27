#!/bin/bash

wget https://www.fontsquirrel.com/fonts/download/Aller -O Aller.zip
sudo unzip Aller.zip -d ~/.fonts/

wget https://www.fontsquirrel.com/fonts/download/Ubuntu-Titling -O Ubuntu-Titling.zip
sudo unzip Ubuntu-Titling.zip -d ~/.fonts/

fc-cache ~/.fonts/

