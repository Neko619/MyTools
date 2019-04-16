# ConvertTo-HTMLFromMarkdown

## Usage
```
PS> Get-ChildItem


    ディレクトリ: C:\work


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----       2019/04/16     21:55             47 input.md
PS>
PS> ConvertTo-HTMLFromMarkdown -mdfile input.md
./input.html
PS>
PS> Get-ChildItem


    ディレクトリ: C:\work


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----       2019/04/16     21:55             47 input.md
-a----       2019/04/16     21:55            279 input.html
```

```
PS> Get-ChildItem


    ディレクトリ: C:\work


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----       2019/04/16     21:55             47 input.md
PS>
PS> ConvertTo-HTMLFromMarkdown -mdfile input.md -o output.html
./output.html
PS>
PS> Get-ChildItem


    ディレクトリ: C:\work


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----       2019/04/16     21:55             47 input.md
-a----       2019/04/16     21:55            279 output.html
```
