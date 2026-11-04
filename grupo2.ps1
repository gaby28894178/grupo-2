for ($i = 1; $i -le 3; $i++) {
    $adaptadores = Get-NetAdapter | Where-Object { $_.Status -eq "Up" }

    $fechaHora = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    Write-Host "Verificacion $i - Fecha y hora: $fechaHora"

    Write-Host "Adaptadores de red activos: $($adaptadores.Count)"
    foreach ($adaptador in $adaptadores) {
        Write-Host "  - $($adaptador.Name) | $($adaptador.InterfaceDescription)"
    }

    if ($i % 2 -eq 0) {
        Write-Host "Iteracion $i: numero PAR - verificacion intermedia completada."
    } else {
        Write-Host "Iteracion $i: numero IMPAR - verificacion inicial o final en curso."
    }

    Write-Host ""
}

Write-Host "El monitoreo de red ha concluido con exito."
