$Username       = 'email'
$Password       = 'password'

$CHRollForm     = 'https://flight.raven.ai/lb/dashboard/All/0'
$CHOmni         = 'https://flight.raven.ai/lb/dashboard/All/1'
$CHColumn       = 'https://flight.raven.ai/lb/dashboard/All/2'
$CHBreak        = 'https://flight.raven.ai/lb/dashboard/All/3'
$CHSlitter      = 'https://flight.raven.ai/lb/dashboard/All/4'
$CHFingerJoiner = 'https://flight.raven.ai/lb/dashboard/All/5'

$LPOmni         = 'https://flight.raven.ai/lbprairie/dashboard/All/0'
$LPColumn       = 'https://flight.raven.ai/lbprairie/dashboard/All/1'
$LPFingerJoiner = 'https://flight.raven.ai/lbprairie/dashboard/All/2'

$Department = $LPOmni

Function StopEdge {
    $edgeBrowser = Get-Process *Edge*
    try 
    {
        $edgeBrowser.CloseMainWindow() | Out-Null 
    } catch { }
}

Function StartEdge {
    Sleep 2
    start microsoft-edge:$Department
    $wshell = New-Object -ComObject wscript.shell;
    $wshell.AppActivate('Google - Microsoft Edge')
    Sleep 2
    $wshell.SendKeys('{F11}')
    Sleep 2
    $wshell.SendKeys($Username)
    $wshell.SendKeys('{Enter}')
    Sleep 2
    $wshell.SendKeys($Password)
    Sleep 2
    $wshell.SendKeys('{Enter}')
}

StopEdge
StartEdge