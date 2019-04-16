$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "ConvertTo-HTMLFromMarkdown" {
    It "does something useful" {
        $true | Should Be $true
    }
    It "returns a canonical phrase" {
      ConvertTo-HTMLFromMarkdown | Should Throw
    }
    Context "パラメータ確認"{
      It "-MdFile something.md" {
        ConvertTo-HTMLFromMarkdown -MdFile "something.md" | Should Be "something.md"
      }

    }
}
