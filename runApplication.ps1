$PSScriptRoot
if (-not(Test-Path -Path $PSScriptRoot/foodOrderingAngular/npmExists.txt -PathType Leaf)) {
    try {
        Set-Location -Path "$PSScriptRoot/foodOrderingAngular/"
        npm i
        $null = New-Item -ItemType File -Path "$PSScriptRoot/foodOrderingAngular/npmExists.txt" -Force -ErrorAction Stop
        Write-Host "File has been added to confirm the install..."
    }
    catch {
        throw $_.Exception.Message
    }
} else {
    Write-Host "Something went wrong when trying to install, check to see if npmExists.txt is in ./foodOrderingAngular and delete if you have not installed"
}
Set-Location -Path $PSScriptRoot
try {
    Invoke-Expression 'cmd /c start powershell -Command {Invoke-Expression ".\mvnw spring-boot:run"; Read-Host}'
    Set-Location -Path "$PSScriptRoot/foodOrderingAngular/"
    ng serve --open
}
catch {
    throw $_.Exception.Message
}