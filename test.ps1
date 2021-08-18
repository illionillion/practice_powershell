# Set-ExecutionPolicy RemoteSigned -Scope Process -Force
# このコマンドで権限確保？
for ($i=0; $i -lt 10; $i++){
  Write-Output ("count:"+$i)
  if ($i%2 -eq 0) {
    Write-Output('gu-su-'+$i)
  }
}