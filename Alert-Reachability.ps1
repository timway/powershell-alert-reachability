. { Function Alert-Reachable
    {

        <#
        .SYNOPSIS
        Meant to attempt to contact a host continously, play a tune and return control back to the user when it is identified as reachable.
        .DESCRIPTION
        Uses a simple loop and the Test-Connection function to check if a host is available. It sends 2 ICMP messages on a delay of 2 seconds before trying again. The tune that is played by default is StarWarsImperialMarchShort but can be altered at run-time.
        .EXAMPLE
        Alert-Reachable -Target 8.8.8.8

        Plays the default tune and checks a single host by IPv4 address at 8.8.8.
        .EXAMPLE
        '8.8.4.4','8.8.8.8' | Alert-Reachable -Tune MissionImpossible3

        Plays the MissionImpossible3 tune only after it checks that all hosts are reachable. It checks two hosts by IPv4 address at 8.8.4.4 and 8.8.8.8.
        .PARAMETER Target
        The IPv4, IPv6 or computer name to attempt to reach.
        .PARAMETER Tune
        The name of the tune to play.
        #>

        [CmdletBinding()]
        Param(
            [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
            [string] $Target,
            [Parameter(Mandatory=$false)]
            [ValidateSet("MissionImpossible3","StarWarsImperialMarchShort","SweetChildO'Mine")]
            [String] $Tune = "StarWarsImperialMarchShort"
        )

        Process
        {
            Do { } Until (Test-Connection -Quiet -Count 2 -Delay 2 -ComputerName $Target)
        }
        
        End
        {
            Switch ($Tune)
            {
                "MissionImpossible3"
                {
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(932,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(1047,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(699,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(740,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(932,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(1047,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(784,150) 
                    Start-Sleep -m 300 
                    [System.Console]::Beep(699,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(740,150) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(932,150) 
                    [System.Console]::Beep(784,150) 
                    [System.Console]::Beep(587,1200) 
                    Start-Sleep -m 75 
                    [System.Console]::Beep(932,150) 
                    [System.Console]::Beep(784,150) 
                    [System.Console]::Beep(554,1200) 
                    Start-Sleep -m 75 
                    [System.Console]::Beep(932,150) 
                    [System.Console]::Beep(784,150) 
                    [System.Console]::Beep(523,1200) 
                    Start-Sleep -m 150 
                    [System.Console]::Beep(466,150) 
                    [System.Console]::Beep(523,150)
                }
                "StarWarsImperialMarchShort"
                {
                    [System.Console]::Beep(440,500)       
                    [System.Console]::Beep(440,500) 
                    [System.Console]::Beep(440,500)        
                    [System.Console]::Beep(349,350)        
                    [System.Console]::Beep(523,150)        
                    [System.Console]::Beep(440,500)        
                    [System.Console]::Beep(349,350)        
                    [System.Console]::Beep(523,150)        
                    [System.Console]::Beep(440,1000) 
                    [System.Console]::Beep(659,500)        
                    [System.Console]::Beep(659,500)        
                    [System.Console]::Beep(659,500)        
                    [System.Console]::Beep(698,350)        
                    [System.Console]::Beep(523,150)        
                    [System.Console]::Beep(415,500)        
                    [System.Console]::Beep(349,350)        
                    [System.Console]::Beep(523,150)        
                    [System.Console]::Beep(440,1000)
                }
                "SweetChildO'Mine"
                {
                    [System.Console]::Beep(587.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(587.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(659.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(659.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(587.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(587.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(587.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(587.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(659.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(659.3,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(784,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1318.5,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1318.5,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1568,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1480,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1318.5,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1174.7,200)
                    [System.Console]::Beep(880,200)
                    [System.Console]::Beep(1174.7,1000)
                }
            }
        }
    }
}