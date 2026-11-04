for ($i = 1; $i -le 3; $i++) {
    Get-NetAdapter | Format-Table Name, InterfaceDescription, ifIndex, Status, MacAddress, LinkSpeed

    Get-NetIPConfiguration | Format-Table InterfaceAlias, IPv4Address, IPv6Address, DNSServer

    $fechaHora = Get-Date -Format "dd/MM/yyyy HH:mm:ss"

    if ($i % 2 -eq 0) {
        Write-Host "Verificacion de red OK a las $($fechaHora) (Intento numero $($i))"
    } else {
        Write-Host "Revisando adaptador... Intento en curso a las $($fechaHora) (Intento numero $($i))"
    }
}

Write-Host "El monitoreo de red ha concluido con exito."
