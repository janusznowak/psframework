﻿# Unattended mode, so there is a central flag scripts & moduls can detect
Set-PSFConfig -Module PSFramework -Name 'System.Unattended' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.PSFCore.PSFCoreHost]::Unattended = $args[0] } -Description "Central setting, showing whether the current execution is unattended or not. This allows scripts/moduls to react to whether there is a user at the controls or not."