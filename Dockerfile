FROM danielgran/debian-base

RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt update && \
    apt install -y llvm cmake clang libicu-dev uuid-dev libcurl4-openssl-dev zlib1g-dev libkrb5-dev libtinfo5 dotnet-sdk-6.0