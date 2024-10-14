if(-not (Get-Command winget -ErrorAction SilentlyContinue)){
    Write-Host "winget is not install, Please install Windows Package Manager first."  -ForegroundColor Red
    exit
}

#install nodejs

# Install Node.js
Write-Host "Installing Node.js..." -ForegroundColor Cyan
winget install OpenJS.NodeJS.LTS --silent --accept-source-agreements --accept-package-agreements

# Install Git
Write-Host "Installing Git..." -ForegroundColor Cyan
winget install Git.Git --silent --accept-source-agreements --accept-package-agreements

# Install IntelliJ IDEA Community Edition
Write-Host "Installing IntelliJ IDEA Community Edition..." -ForegroundColor Cyan
winget install JetBrains.IntelliJIDEA.Community --silent --accept-source-agreements --accept-package-agreements


# Install Visual Studio Code
Write-Host "Installing Visual Studio Code..." -ForegroundColor Cyan
winget install Microsoft.VisualStudioCode --silent --accept-source-agreements --accept-package-agreements

# Install OpenJDK 17
Write-Host "Installing OpenJDK 17..." -ForegroundColor Cyan
winget install EclipseAdoptium.Temurin.17.JDK --silent --accept-source-agreements --accept-package-agreements

# Gradle=7.4.2
Write-Host "Installing Gradle 7.4.2..." -ForegroundColor Cyan
$gradleVersion = "7.4.2"
$gradleUrl = "https://services.gradle.org/distributions/gradle-$gradleVersion-bin.zip"
$gradleZip = "$env:TEMP\gradle-$gradleVersion-bin.zip"
$gradleDir = "C:\Gradle\gradle-$gradleVersion"
Invoke-WebRequest -Uri $gradleUrl -OutFile $gradleZip
Expand-Archive -Path $gradleZip -DestinationPath "C:\Gradle"
Remove-Item -Force $gradleZip
$gradleBin = "$gradleDir\bin"
if (-not ($env:Path -like "*$gradleBin*")) {
    Write-Host "Adding Gradle to the system PATH..." -ForegroundColor Cyan
    [System.Environment]::SetEnvironmentVariable("Path", $env:Path + ";$gradleBin", [System.EnvironmentVariableTarget]::Machine)
    Write-Host "Gradle 7.4.2 added to the system PATH successfully." -ForegroundColor Green
} else {
    Write-Host "Gradle is already in the system PATH." -ForegroundColor Yellow
}


Write-Host "All installations completed successfully!" -ForegroundColor Green
