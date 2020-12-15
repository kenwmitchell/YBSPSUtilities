# Source all functions in the public folder and export
$Functions = @( Get-ChildItem -Path $PSScriptRoot\functions\*.ps1 -ErrorAction SilentlyContinue )
foreach ($Import in @($Functions)) {
    try {
        . $Import.fullname
    } catch {
        throw "Could not import function $($Import.fullname): $_"
    }
}