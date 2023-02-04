Function Install-Choco {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    refreshenv;
}

Function Install-VSCode { 
    choco install vscode
}

Function Install-Dotnet {
    choco install dotnet
}

Function Install-VisualStudio {
    choco install visualstudio2022professional
}

Function Install-VisualStudioWorkloads { 
    choco install visualstudio2022-workload-netweb
    choco install visualstudio2022-workload-azure
    choco install visualstudio2022-workload-node
    choco install visualstudio2022-workload-nativecrossplat
    choco install visualstudio2022-workload-netcrossplat
    choco install visualstudio2022-workload-data
    choco install visualstudio2022-workload-manageddesktop
    choco install visualstudio2022-workload-nodebuildtools
    choco install visualstudio2022-workload-manageddesktopbuildtools
    choco install visualstudio2022-workload-webbuildtools

}

Function Install-Spotify {
    choco install spotify
}

Function Install-Docker {
    choco install docker-desktop
}

Function Install-Keepass {
    choco install keepass
}

Function Install-SSMS {
    choco install sql-server-management-studio
}

Function Install-Figma {
    choco install figma
}

Function Install-JDK19 {
    Invoke-RestMethod -Method Get https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.msi | Out-File "jdk-19_windows-x64_bin.msi"
    Start-Process msiexec.exe -Wait -ArgumentList '/i "jdk-19_windows-x64_bin.msi" /q'
}

Function Install-NodeJs {
    choco install nodejs.install
}

Function Install-Git {
    choco install git
}

Function Install-Postman {
    choco install postman
}

Function Install-PowershellCore {
    choco install powershell-core
}

Function Install-WSL2 {
    choco install wsl2
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