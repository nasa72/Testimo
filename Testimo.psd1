﻿@{
    AliasesToExport      = @('Test-ImoAD', 'Test-IMO')
    Author               = 'Przemyslaw Klys'
    CmdletsToExport      = @()
    CompanyName          = 'Evotec'
    CompatiblePSEditions = @('Desktop')
    Copyright            = '(c) 2011 - 2023 Przemyslaw Klys @ Evotec. All rights reserved.'
    Description          = 'Testimo is Powershell module that tests Active Directory against specific set of tests.'
    FunctionsToExport    = @('Compare-Testimo', 'Get-TestimoConfiguration', 'Get-TestimoSources', 'Import-PrivateModule', 'Invoke-Testimo')
    GUID                 = '0c1b99de-55ac-4410-8cb5-e689ff3be39b'
    ModuleVersion        = '0.0.86'
    PowerShellVersion    = '5.1'
    PrivateData          = @{
        PSData = @{
            IconUri    = 'https://evotec.xyz/wp-content/uploads/2019/08/Testimo.png'
            ProjectUri = 'https://github.com/EvotecIT/Testimo'
            Tags       = @('Windows', 'ActiveDirectory', 'AD', 'Infrastructure', 'Testing', 'Checks', 'Audits', 'Checklist', 'Validation')
        }
    }
    RequiredModules      = @(@{
            Guid          = 'ee272aa8-baaa-4edf-9f45-b6d6f7d844fe'
            ModuleName    = 'PSSharedGoods'
            ModuleVersion = '0.0.265'
        }, @{
            Guid          = '462dd5e2-f32a-4263-bff5-22edf28882d0'
            ModuleName    = 'PSWinDocumentation.DNS'
            ModuleVersion = '0.0.10'
        }, @{
            Guid          = '5df72a79-cdf6-4add-b38d-bcacf26fb7bc'
            ModuleName    = 'PSEventViewer'
            ModuleVersion = '1.0.22'
        }, @{
            Guid          = 'a7bdf640-f5cb-4acf-9de0-365b322d245c'
            ModuleName    = 'PSWriteHTML'
            ModuleVersion = '1.8.0'
        }, @{
            Guid          = '9fc9fd61-7f11-4f4b-a527-084086f1905f'
            ModuleName    = 'ADEssentials'
            ModuleVersion = '0.0.165'
        }, @{
            Guid          = 'f7d4c9e4-0298-4f51-ad77-e8e3febebbde'
            ModuleName    = 'GPOZaurr'
            ModuleVersion = '0.0.159'
        }, @{
            Guid          = '0b0ba5c5-ec85-4c2b-a718-874e55a8bc3f'
            ModuleName    = 'PSWriteColor'
            ModuleVersion = '1.0.1'
        })
    RootModule           = 'Testimo.psm1'
}