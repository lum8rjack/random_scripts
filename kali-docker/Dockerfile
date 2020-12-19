FROM kalilinux/kali-rolling:latest

RUN apt-get update -y
RUN apt-get install -y vim net-tools impacket-scripts metasploit-framework arp-scan ettercap-text-only smbclient locate rdesktop freerdp2-x11 virtualenv eyewitness nikto sqlmap

RUN gem install evil-winrm

WORKDIR /root/tools

# Installing pywerview requires python2.7 so if you dont need this comment out the follow lines
RUN apt-get install -y python-dev
RUN git clone https://github.com/the-useless-one/pywerview.git
WORKDIR /root/tools/pywerview
RUN virtualenv -p python2.7 venvPV
RUN /root/tools/pywerview/venvPV/bin/pip install -r /root/tools/pywerview/requirements.txt
RUN /root/tools/pywerview/venvPV/bin/python /root/tools/pywerview/setup.py install
# End of the pywerview reqirements

WORKDIR /root/tools

# Install additional repos
RUN git clone https://github.com/fox-it/BloodHound.py.git
WORKDIR /root/tools/BloodHound.py
RUN virtualenv -p python3 venvBH
RUN /root/tools/BloodHound.py/venvBH/bin/python3 /root/tools/BloodHound.py/setup.py install


WORKDIR /root/tools
CMD /bin/bash

