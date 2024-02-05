#!/bin/bash


sudo wget https://portswigger.net/burp/releases/download?product=community&version=latest&type=jar -o /opt/burpsuite/burpsuite_community.jar &&

sudo chmod ugo+rx /opt/burpsuite/burpsuite_community.jar &&

sudo ln -sf /opt/burpsuite/burpsuite_community.jar /usr/local/bin/burpsuite


