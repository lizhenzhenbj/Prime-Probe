#!/bin/sh

HOME=$DEBUG_REAL_HOME steam steam://install/269950
cd $DEBUG_REAL_HOME/.steam/steam/steamapps/common/X-Plane\ 11
echo "269950" > steam_appid.txt

cd ~

echo "#!/bin/sh
cd \$DEBUG_REAL_HOME/.steam/steam/steamapps/common/X-Plane\ 11
HOME=\$DEBUG_REAL_HOME ./X-Plane-x86_64 \$@
mv Log.txt \$LOG_FILE" > xplane11
chmod +x xplane11
