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

Write-Host "All installations completed successfully!" -ForegroundColor Green
