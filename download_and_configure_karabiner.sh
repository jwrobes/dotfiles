echo 'download forked version of Karabiner Elements to map ctrl and esc to caps lock'
curl -O -L https://github.com/wwwjfy/Karabiner-Elements/releases/download/0.90.86/Karabiner-Elements-0.90.86.dmg

echo 'mount the Karabiner dmg'
hdiutil mount Karabiner-Elements-0.90.86.dmg

echo 'copy the karabiner elements files'
cp -R /Volumes/Karabiner-Elements-0.90.86 .

echo 'install the karbiner elements'
sudo installer -package Karabiner-Elements-0.90.86/Karabiner-Elements.sparkle_guided.pkg -target "/Volumes/Untitled/"

echo 'copy karabiner json into the config for karabiner'
cp /karabiner.json ~/.config/karabiner/

echo 'open the karabiner app to activate the configuration'
open /Applications/Karabiner-Elements.app/

echo 'unmount the karabiner elements dmg'
diskutil unmount /Volumes/Karabiner-Elements-0.90.86/

exit 0

