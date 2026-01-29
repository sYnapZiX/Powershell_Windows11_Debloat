#Requires -RunAsAdministrator

$header = "----------------------------------------------------" + [Environment]::NewLine + "All-In-One Windows 11 Debloat Collection by sYnapZiX" + [Environment]::NewLine + "----------------------------------------------------"
$totalsteps = "2:"

clear

Write-Host "$header"
Write-Host " "
Write-Host " "
Write-Host " "
Write-Host "Step 1 of $totalsteps Raphire's Debloat Script..."
Write-Host " "
$choice = Read-Host "Use latest version from original repository? (y/n)"
switch ($choice) {
    y {
        clear
        Write-Host "Running Raphire's Debloat Script... (Latest Version)"
        & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Raphire/Win11Debloat/master/Get.ps1")))
    }
    n {
        clear
        Write-Host "Running Raphire's Debloat Script... (Backup Version)"
        & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/sYnapZiX/Fork_Raphire_Win11Debloat/master/Get.ps1")))
    }
    default {
        clear
        exit
    }
}

clear

Write-Host "$header"
Write-Host " "
Write-Host " "
Write-Host " "
Write-Host "Step 2 of $totalsteps Zoicware's Remove AI Script..."
Write-Host " "
$choice = Read-Host "Use latest version from original repository? (y/n)"
switch ($choice) {
    y {
        clear
        Write-Host "Running Zoicware's Remove AI Script... (Latest Version)"
        & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/zoicware/RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
    }
    n {
        clear
        Write-Host "Running Zoicware's Remove AI Script... (Backup Version)"
        & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/sYnapZiX/Fork_Zoicware_RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
    }
    default {
        clear
        exit
    }
}
