﻿$SysVolDFSR = @{
    Enable = $true
    Source = @{
        Name    = "DFSR Flags"
        Data    = {
            $DistinguishedName = (Get-ADDomain -Server $Domain).DistinguishedName
            $ADObject = "CN=DFSR-GlobalSettings,CN=System,$DistinguishedName"
            $Object = Get-ADObject -Identity $ADObject -Properties * -Server $Domain
            if ($Object.'msDFSR-Flags' -gt 47) {
                [PSCustomObject] @{
                    'SysvolMode' = 'DFS-R'
                    'Flags'      = $Object.'msDFSR-Flags'
                }
            } else {
                [PSCustomObject] @{
                    'SysvolMode' = 'Not DFS-R'
                    'Flags'      = $Object.'msDFSR-Flags'
                }
            }
        }
        Details = [ordered] @{
            Area             = 'Configuration'
            Explanation      = 'DFS-R should be available.'
            Recommendation   = ''
            RiskLevel        = 10
            RecommendedLinks = @(
                'https://blogs.technet.microsoft.com/askds/2009/01/05/dfsr-sysvol-migration-faq-useful-trivia-that-may-save-your-follicles/'
                'https://dirteam.com/sander/2019/04/10/knowledgebase-in-place-upgrading-domain-controllers-to-windows-server-2019-while-still-using-ntfrs-breaks-sysvol-replication-and-dslocator/'
            )
        }
    }
    Tests  = [ordered] @{
        DFSRSysvolState = @{
            Enable     = $true
            Name       = 'DFSR Sysvol State'
            Parameters = @{
                Property              = 'SysvolMode'
                ExpectedValue         = 'DFS-R'
                OperationType         = 'eq'
                PropertyExtendedValue = 'Flags'
            }
        }
    }
}