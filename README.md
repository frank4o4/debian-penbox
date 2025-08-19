# Debian Pentester Setup

This is my howto for installing Debian Trixie with pentesting tools. The only reason I considered this is when I've tried to update my kali on a network that has restrictions they will block Kali repos but not Debian.


I install the basic GUI XFCE or Gnome.


Install Common tools for downloading files and of course git.
```sh
sudo apt update &&
sudo apt install wget curl git
```


Update `/etc/apt/sources.list` 
```sh
deb http://deb.debian.org/debian/ trixie main non-free-firmware contrib
deb-src http://deb.debian.org/debian/ trixie main non-free-firmware contrib

deb http://security.debian.org/debian-security trixie-security main non-free-firmware contrib
deb-src http://security.debian.org/debian-security trixie-security main non-free-firmware contrib

# trixie-updates, to get updates before a point release is made;
# see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
deb http://deb.debian.org/debian/ trixie-updates main non-free-firmware contrib
deb-src http://deb.debian.org/debian/ trixie-updates main non-free-firmware contrib
```

Install common scanning tools
```sh
sudo apt install nmap masscan  
```

Directory brute forcing tools, I will later install feroxbuster as it's not in debian source tree

```sh
sudo apt install gobuster dirb
```

Installing Feroxbuster by visiting website https://github.com/epi052/feroxbuster we can get the latest build under Releases for example 

```sh
cd /tmp &&
wget https://github.com/epi052/feroxbuster/releases/download/v2.11.0/x86_64-linux-feroxbuster.zip &&
unzip x86_64-linux-feroxbuster.zip &&
sudo cp feroxbuster /usr/local/bin &&
sudo chmod +x /usr/local/bin/feroxbuster
```

Who can forget netcat and socat
```sh
sudo apt install netcat-openbsd socat
```

Password cracking tools
```sh
sudo apt install john john-data hashcat hashcat-data hcxtools hcxkeys
```
We need some good wordlists so I download SecLists from https://github.com/danielmiessler/SecLists
```sh
cd /tmp &&
git clone https://github.com/danielmiessler/SecLists.git &&
sudo mkdir /usr/share/wordlist &&
mv SecLists /usr/share/wordlist/seclist
```

Download rockyou

```sh
cd /tmp &&
wget https://github.com/josuamarcelc/common-password-list/raw/refs/heads/main/rockyou.txt/rockyou.txt.zip &&
unzip rockyou.txt.zip &&
sudo mv rockyou.txt /usr/share/wordlist
```

sqlmap for sql injections

```sh
sudo apt install sqlmap
```

Impacket tools
```sh
sudo apt install python3-pip pipx -y

python3 -m pipx install impacket
```

Now add path in .bashrc

```sh
export PATH=$PATH:~/.local/bin
```
Reload your bashrc to test

```sh
source ~/.bashrc
```


Wireshark
```sh
sudo apt install wireshark
```

Install Metasploit

```sh
cd /tmp && \
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
chmod 755 msfinstall && \
./msfinstall
```

Install Burp Suite Community Edition

```sh
curl -L -o burpsuite_community.sh "https://portswigger.net/burp/releases/download?product=community&type=Linux"
chmod +x burpsuite_community.sh
./burpsuite_community.sh
```


Subfinder  https://github.com/projectdiscovery/subfinder

```sh
sudo apt install golang -y

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
```

install Httpx https://github.com/projectdiscovery/httpx

```sh
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
```

Install extra tools

```sh
sudo apt install ffuf paramspider sublist3r arjun
```


Amss https://github.com/OWASP/Amass
Zap Proxy https://www.zaproxy.org/
Dirsearch https://github.com/maurosoria/dirsearch
Nuclei https://github.com/projectdiscovery/nuclei
Wfuzz https://github.com/xmendez/wfuzz
GitRob https://github.com/michenriksen/gitrob
Joomscan https://github.com/OWASP/joomscan
Wpscan https://github.com/wpscanteam/wpscan
Rustscan https://github.com/RustScan/RustScan
Httprobe https://github.com/tomnomnom/httprobe
getJS https://github.com/003random/getJS
Crlfuzz https://github.com/dwisiswant0/crlfuzz
Xsrfprobe https://github.com/0xInfection/XSRFProbe
Liffy https://github.com/hvqzao/liffy
GraphQLmap https://github.com/swisskyrepo/GraphQLmap
Dom Red https://github.com/Naategh/dom-red
OpenRedireX https://github.com/devanshbatham/OpenRedireX
Smuggler https://github.com/defparam/smuggler
SSRFmap https://github.com/swisskyrepo/SSRFmap
BruteMap https://github.com/brutemap-dev/brutemap
Request Smuggler https://github.com/Sh1Yo/request_smuggler
Cerbrutus https://github.com/Cerbrutus-BruteForcer/cerbrutus
ApkLeaks https://github.com/dwisiswant0/apkleaks
JWT_Tool https://github.com/ticarpi/jwt_tool
Jexboss https://github.com/joaomatosf/jexboss
Waybackurls https://github.com/tomnomnom/waybackurls
Patator https://github.com/lanjelot/patator
Dirdar https://github.com/gr0driket/DirDar
Bypass 403 https://github.com/iamj0ker/bypass-403
Hash-Buster https://github.com/s0md3v/Hash-Buster
Crackmapexec https://github.com/byt3bl33d3r/CrackMapExec
Deathstar https://github.com/byt3bl33d3r/DeathStar
Cloudfail https://github.com/m0rtem/CloudFail
Linkfinder https://github.com/GerbenJavado/LinkFinder
Subzy https://github.com/LukaSikic/subzy
Shellerator https://github.com/ShutdownRepo/shellerator
Enum4linux https://github.com/cddmp/enum4linux-ng
