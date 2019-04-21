$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

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
      ConvertTo-HTMLFromMarkdown -MdFile "./testdata/testfile01.md" 
      "./testdata/testfile01.html"| Should -Exist 
    }

}
