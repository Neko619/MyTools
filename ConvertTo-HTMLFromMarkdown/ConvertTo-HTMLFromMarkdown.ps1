function ConvertTo-HTMLFromMarkdown {

# Ref: https://github.com/clymb3r/PowerShell/blob/master/Invoke-NinjaCopy/Invoke-NinjaCopy.ps1
# Ref: https://qiita.com/Kosen-amai/items/1f36ce59a768e7f9e869
# Ref: https://github.com/pester/Pester/wiki

[CmdletBinding()]
Param(
  [Parameter(Position = 0, Mandatory = $true)][String]$MdFile
)

  if ($MdFile) {
    return $MdFile
  } else {
    return "Please Input Markdown."
  }

}
