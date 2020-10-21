$rawPackages = choco list -lo;

[System.Collections.ArrayList] $PackageArray = $rawPackages.split([Environment]::NewLine)

$PackageArray.RemoveAt(0);
$PackageArray.RemoveAt($PackageArray.Count - 1);

$XMLVers = '<?xml version="1.0" encoding="utf-8"?>';
$PkgOne = "<packages>"
$PkgTwo = "</packages>"

$XMLVers | Add-Content -Path .\packages.config 
$PkgOne | Add-Content -Path .\packages.config 

foreach ($package in $PackageArray){
	$PkgVer = $package.Split([Environment]::Space)
	"<package id='{0}' />" -f $PkgVer[0] | Add-Content -Path .\packages.config 
}

$PkgTwo | Add-Content -Path .\packages.config 