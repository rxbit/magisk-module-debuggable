$source = Get-Location 
$source = $source.Path + "\build"
$destination = Get-Location
$destination = $destination.Path + "\magisk-module-debuggable.zip"
If (Test-path $destination) {
    Remove-item $destination
}
Write-Output "Module building started"
mkdir build | Out-Null
Write-Output "Copying base module files"
Copy-Item -R ./module/* ./build/
Write-Output "Copying installer files"
Copy-Item -R ./installer/* ./build/
Set-Location build
Write-Output "Zipping all together"
C:\Program Files\7-Zip\7z.exe a $destination "$($source + '\')"
Set-Location ../
Write-Output "Cleaning"
Remove-Item ./build -Recurse
Write-Output "Done!"