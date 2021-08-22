#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10638670:1b1b672c77cafe54a5396312607f5b2b1b40d716; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9579850:fd5c0437399038113f2c7ae170d42fed73588772 EMMC:/dev/block/bootdevice/by-name/recovery 1b1b672c77cafe54a5396312607f5b2b1b40d716 10638670 fd5c0437399038113f2c7ae170d42fed73588772:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
