# Set-ExecutionPolicy RemoteSigned -Scope Process -Force
# このコマンドで権限確保？
$array=@(); #空の配列
Write-Output("all:"+$array.Count)


for ($i=0; $i -lt 10; $i++){
  Write-Output ("count:"+$i)
  if ($i%2 -eq 0) {
    Write-Output($i%2 -eq 0)#-eq ==
    Write-Output($i%2 -lt 0)#-lt <
    Write-Output($i%2 -gt 0)#-gt >
    Write-Output('gu-su-'+$i)
    $array+=$i
    new-Item .\test$i.txt #ファイル作成
    remove-Item .\test$i.txt #ファイル削除
  }
}

Write-Output("all:"+$array.Count)
Write-Output($array)