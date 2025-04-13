#!/bin/sh

DOTNET_HOME="/usr/share/dotnet/sdk/$DOTNET_SDK_VERSION"

dotnet $DOTNET_HOME/Roslyn/bincore/csc.dll -nologo -reference:$DOTNET_HOME/ref/netstandard.dll -out:/tmp/main.exe main.cs
dotnet exec --runtimeconfig $DOTNET_HOME/vstest.console.runtimeconfig.json /tmp/main.exe
