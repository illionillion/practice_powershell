
# Get-ChildItem -Name | Rename-Item -NewName { $_ -replace "\.PNG$", ".png" }
# Get-ChildItem -Name | Rename-Item -NewName { $_ -replace "\.PNG$", ".png"}
# $file_contents = $(Get-Content "") -replace ".PNG",".png"
# $file_contents = $(Get-Content "C:\Work\sample.txt") -replace "FGHIJ","XXXXX"
# $file_contents > "C:\Work\sample.txt"
# 拡張子変更
foreach($a in get-ChildItem){
    foreach($i in get-ChildItem "$a/*xhtml"){ 
        $file_contents = $(Get-Content $i) -replace ".PNG",".png"
        $file_contents > $i
    }
}

# 中身変更
foreach($i in get-ChildItem "unit01/*xhtml"){ 
    ni $i.Name

    $file_contents = $(Get-Content $i)
    # $file_contents > $i.Name
    # write-output $file_contents | out-file $i.Name

}

mkdir "unit12/utf8"
foreach($i in get-ChildItem -Name "unit12/*xhtml"){ 
    
    ni "unit12/utf8/$i"
}
