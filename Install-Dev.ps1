Function Install-Choco {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    refreshenv;
}

Function Install-VSCode { 
    choco install vscode -y
}

Function Install-Dotnet {
    choco install dotnet -y
}

Function Install-VisualStudio {
    choco install visualstudio2022professional -y
}

Function Install-VisualStudioWorkloads { 
    choco install visualstudio2022-workload-netweb -y
    choco install visualstudio2022-workload-azure -y
    choco install visualstudio2022-workload-node -y
    choco install visualstudio2022-workload-nativecrossplat -y
    choco install visualstudio2022-workload-netcrossplat -y
    choco install visualstudio2022-workload-data -y
    choco install visualstudio2022-workload-manageddesktop -y
    choco install visualstudio2022-workload-nodebuildtools -y
    choco install visualstudio2022-workload-manageddesktopbuildtools -y
    choco install visualstudio2022-workload-webbuildtools -y

}

Function Install-Spotify {
    choco install spotify -y
}

Function Install-Docker {
    choco install docker-desktop -y
}

Function Install-Keepass {
    choco install keepass -y
}

Function Install-SSMS {
    choco install sql-server-management-studio -y
}

Function Install-Figma {
    choco install figma -y
}

Function Install-JDK19 {
    Invoke-RestMethod -Method Get https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.msi | Out-File "jdk-19_windows-x64_bin.msi"
    Start-Process msiexec.exe -Wait -ArgumentList '/i "jdk-19_windows-x64_bin.msi" /q'
}

Function Install-NodeJs {
    choco install nodejs.install -y
}

Function Install-Git {
    choco install git -y
}

Function Install-Postman {
    choco install postman -y
}

Function Install-PowershellCore {
    choco install powershell-core -y
}

Function Install-WSL2 {
    choco install wsl2 -y
}


Install-Choco
Install-VSCode
Install-Dotnet
Install-VisualStudio
Install-VisualStudioWorkloads
Install-Spotify
Install-Docker
Install-Keepass
Install-SSMS
Install-Figma
Install-JDK19
Install-NodeJs
Install-Git
Install-Postman
Install-PowershellCore
Install-WSL2
refreshenv
dotnet tool install --global dotnet-reportgenerator-globaltool
dotnet tool install --global dotnet-ef