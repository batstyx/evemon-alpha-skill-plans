[xml]$xml = Get-Content "Alpha - Alpha Skills.xml"

$xpath= "//notes"

$node = $xml.SelectSingleNode($xpath)
while ($node -ne $null) {
    $element = $node.ParentNode
    #$element.RemoveChild($node)
    $element.IsEmpty = $true
    
    $node = $xml.SelectSingleNode($xpath)
}

[string]$dir = Get-Location
$xml.save((Join-Path $dir "Alpha Skills.xml"))