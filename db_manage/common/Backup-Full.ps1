<# 数据库全量备份脚本（每日执行） #>
$backupDate = Get-Date -Format 'yyyyMMdd'
$dbNames = @("order_db", "finance_db", "user_db", "product_db", "store_db", "marketing_db", "audit_db")
foreach ($db in $dbNames) {
    # 替换为实际MySQL备份命令（需安装MySQL客户端）
    & "mysql\bin\mysqldump.exe" -u root -p[你的数据库密码] $db | Compress-Archive -DestinationPath "D:\\chahaixiawang\\db_manage\$db\backup\full\$backupDate_$db_full_encrypt.zip" -Force
    # 生成MD5校验值
    $hash = Get-FileHash "D:\\chahaixiawang\\db_manage\$db\backup\full\$backupDate_$db_full_encrypt.zip" -Algorithm MD5
    Add-Content -Path "D:\\chahaixiawang\\db_manage\$db\backup\full\backup_log.csv" -Value "$backupDate,$db,$hash.Hash"
}
# 同步至异地备份
Copy-Item -Path "D:\\chahaixiawang\\db_manage\*\backup\full\*" -Destination "D:\\chahaixiawang\\backup\db\" -Recurse -Force
