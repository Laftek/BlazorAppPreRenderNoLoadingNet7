#!/bin/sh
curl -sSL https://dot.net/v1/dotnet-install.sh > dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh -c 7.0 -InstallDir ./dotnet7
./dotnet7/dotnet --version
./dotnet7/dotnet dotnet publish -c Release -o ${{env.DOTNET_ROOT}}/myapp -f=net7.0
