$path = Convert-Path .

$folder = (Split-Path -Path $path -Leaf).Replace(" ", "%20")

Get-ChildItem -Path $path | foreach-Object { "`t - ["  + $_.Name.substring(($_.Name.indexof("-") + 2), ($_.Name.indexof(".") - $_.Name.indexof("-") -2 )) + "](" + $folder + "/" + $_.Name.Replace(" ", "%20") + ")" }

