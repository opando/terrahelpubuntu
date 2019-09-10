FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y ca-certificates curl apt-transport-https lsb-release gnupg && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash
    

RUN curl -L -o /usr/bin/terrahelp https://github.com/opencredo/terrahelp/releases/download/v0.6.3/terrahelp-linux-amd64 && \
   chmod +x /usr/bin/terrahelp && \
   terrahelp --version

ENTRYPOINT []
CMD []
