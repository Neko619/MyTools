$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Set-Item env:LANG -Value ja_JP.UTF-8

Describe "ConvertTo-HTMLFromMarkdown" {
    It "does something useful" {
        $true | Should Be $true
    }
    # 何も指定がない場合
    It "returns a canonical phrase" {
      ConvertTo-HTMLFromMarkdown | Should Be "Please Input Markdown."
    }

    <#
    Context "パラメータ確認"{
      It "-MdFile something.md" {
        ConvertTo-HTMLFromMarkdown -MdFile "something.md" | Should Be "something.md"
      }
    }
    #>
    
    # 正常系
    # MdFile to HTML
    It "MDFileの変換" {
      $testinFile01  = "./testdata/testfile01.md" 
      $testoutFile01 = "./testdata/testfile01.html" 
      if (Test-Path $testoutFile01) { remove-item $testoutFile01 }
      ConvertTo-HTMLFromMarkdown -MdFile $testinFile01
      $testoutfile01 | Should -Exist
    }

}
