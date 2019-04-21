function ConvertTo-HTMLFromMarkdown {

# Ref: https://github.com/clymb3r/PowerShell/blob/master/Invoke-NinjaCopy/Invoke-NinjaCopy.ps1
# Ref: https://qiita.com/Kosen-amai/items/1f36ce59a768e7f9e869
# Ref: https://github.com/pester/Pester/wiki

  [CmdletBinding()]
  Param(
    [Parameter(Position = 0, Mandatory = $false)][String]$MdFile = ""
  )
 
  # インプット確認
  if (-not $MdFile) {
    return "Please Input Markdown."
  }

  # インプットファイルの存在確認

  # アウトプットファイル名の生成
  # アウトプットファイルの上書き確認
  # まず分割する
  $MdFile         =  Convert-Path $MdFile
  $orgLeaf        =  Split-Path $MdFile -Leaf
  $orgParent      =  Split-Path (Split-Path $MdFile -Parent) -Leaf
  $orgGrandParent =  Split-Path (Split-Path $MdFile -Parent) -Parent

  # mdからhtml構造に変える
  # TODO: ディレクトリんの方は、変えないこともParametrで指定したい"
  $tgtLeaf        =  $orgLeaf -replace "\.md",".html"
  $tgtParent      =  $orgParent -replace "md","html"
  
  # Output
  $outfile = Join-Path (Join-Path $orgGrandParent $tgtParent) $tgtLeaf
  
  # TODO: outfileの存在確認する

  # htmlファイルの出力
  if (Test-Path $MdFile) {
    marked.cmd -i $MdFile -o $outfile
  }
}
