FROM mcr.microsoft.com/powershell:latest

RUN apt-get update -y
RUN apt-get install -y vim git

WORKDIR /root/tools

# This is needed for Invoke-TheHash to work
ENV computername=desktop123

RUN git clone https://github.com/Kevin-Robertson/Invoke-TheHash.git
RUN git clone https://github.com/PowerShellMafia/PowerSploit.git

CMD pwsh
