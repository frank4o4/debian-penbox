#!/bin/bash
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/apache-user-enum-1.0.txt -o /usr/share/wordlists/dirbuster/apache-user-enum-1.0.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/apache-user-enum-2.0.txt -o /usr/share/wordlists/dirbuster/apache-user-enum-2.0.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-1.0.txt -o /usr/share/wordlists/dirbuster/directory-list-1.0.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-big.txt -o /usr/share/wordlists/dirbuster/directory-list-2.3-big.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-medium.txt -o/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-small.txt -o /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-lowercase-2.3-big.txt -o /usr/share/wordlists/dirbuster/directory-list-2.3-big.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-lowercase-2.3-medium.txt -o/usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt &&
sudo wget  https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-lowercase-2.3-small.txt -o /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-small.txt &&
sudo wget  https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -o /usr/share/wordlists/rockyou.txt &&
sudo wget  https://www.wirelessvillage.ninja/docs/spy_vs_spy.words -o /usr/share/wordlists/spy_vs_spy.words &&
sudo wget  https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt -o /usr/share/wordlists/dirb/common.txt &&
sudo wget  https://wirelessvillage.ninja/docs/cyberpunk.words -o /usr/share/wordlists/dirb/cyberpunk.txt