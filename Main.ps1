#Requires -RunAsAdministrator

$header = "----------------------------------------------------" + [Environment]::NewLine + "All-In-One Windows 11 Debloat Collection by sYnapZiX" + [Environment]::NewLine + "----------------------------------------------------"
$totalsteps = "2:"

clear

Write-Host "$header"
Write-Host " "
Write-Host " "
Write-Host " "
$choice = Read-Host "Unattended-Mode? (y/n)"
    switch ($choice) {
      y {
            clear

            Write-Host "$header"
            Write-Host " "
            Write-Host " "
            Write-Host " "
            Write-Host "Step 1 of $totalsteps Raphire's Debloat Script..."
            Write-Host " "
            Write-Host "Running Raphire's Debloat Script..."
            if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
                Start-Process PowerShell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -C `"& ([scriptblock]::Create((irm 'https://raw.githubusercontent.com/sYnapZiX/Raphire_Win11Debloat/master/Win11Debloat_Quick.ps1')))" -Verb RunAs -Wait
            }
            else {
                & ([scriptblock]::Create((irm 'https://raw.githubusercontent.com/sYnapZiX/Raphire_Win11Debloat/master/Win11Debloat_Quick.ps1')))
            }
            Write-Host " "
            Write-Host "Step 2 of $totalsteps Zoicware's Remove AI Script..."
            Write-Host " "
            Write-Host "Running Zoicware's Remove AI Script..."
            & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/sYnapZiX/Zoicware_RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
            clear
        }
      n {
            clear

            Write-Host "$header"
            Write-Host " "
            Write-Host " "
            Write-Host " "
            Write-Host "Step 1 of $totalsteps Raphire's Debloat Script..."
            Write-Host " "
            $choice = Read-Host "Use latest version from original repository? (y/n/q/s)"
            switch ($choice) {
              y {
                  clear
                  Write-Host "Running Raphire's Debloat Script... (Latest Version)"
                  & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Raphire/Win11Debloat/master/Get.ps1")))
                }
              n {
                  clear
                  Write-Host "Running Raphire's Debloat Script... (Backup Version)"
                  & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/sYnapZiX/Raphire_Win11Debloat/master/Get.ps1")))
                }
              q {
                  clear
                  exit
                }
              s {
                  clear
                  Write-Host "Skipping Raphire's Debloat Script..."
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
            $choice = Read-Host "Use latest version from original repository? (y/n/q/s)"
            switch ($choice) {
              y {
                  clear
                  Write-Host "Running Zoicware's Remove AI Script... (Latest Version)"
                  & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/zoicware/RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
                }
              n {
                  clear
                  Write-Host "Running Zoicware's Remove AI Script... (Backup Version)"
                  & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/sYnapZiX/Zoicware_RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
                }
              q {
                  clear
                  exit
                }
              s {
                  clear
                  Write-Host "Skipping Zoicware's Remove AI Script..."
                }
              default {
                        clear
                        exit
                      }
            }

        clear
        }
    }
