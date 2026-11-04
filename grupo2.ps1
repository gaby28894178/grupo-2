for ($i = 1; $i -le 3; $i++) {
    Get-NetAdapter | Format-Table Name, InterfaceDescription, ifIndex, Status, MacAddress, LinkSpeed

    $fechaHora = Get-Date -Format "dd/MM/yyyy HH:mm:ss"

    if ($i % 2 -eq 0) {
        Write-Host "Verificacion de red OK a las $($fechaHora) (Intento numero $($i))"
    } else {
        Write-Host "Revisando adaptador... Intento en curso a las $($fechaHora) (Intento numero $($i))"
    }
}
