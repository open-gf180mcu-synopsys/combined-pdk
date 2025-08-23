rsync -av \
  --exclude='*.tar' \
  --exclude='*.tar.gz' \
  --exclude='*.gz' \
  --exclude='*.tgz' \
  --exclude='/dk_open/share/pdk/gf-180MCUA-adk/' \
  --exclude='/dk_open/share/pdk/gf180mcuB/' \
  --exclude='/dk_open/share/pdk/gf180mcuC/' \
  --exclude='/dk_open/share/pdk/gf180mcuD/' \
  /mnt/designkits/gf180MCU/  /home/wspitts2/gf180MCU_synopsys_shared/
