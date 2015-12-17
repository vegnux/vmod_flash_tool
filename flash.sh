#/bin/bash
# VegnuxMod 2013-2016
# Carlos Sanchez <cargabsj175@gmail.com>

export PATH=$PATH:$(pwd)
export GAIAZIP=gaia.zip
export GECKOGZ=$(ls b2g-*-arm.tar.gz)
export SHALLOWFLASH=tools/shallow_flash.sh
export UPDATESYSFONTS=tools/update_system_fonts.sh
export FIXINTSDCARD=tools/fix_internal_sdcard.sh

clear
echo "VegnuxMod Update tool"
echo ""
echo "Do you want update system fonts? (Mandatory if you upgrade from 1.x or 2.0: (y/n)"
read FONTANSWER
	case ${FONTANSWER} in
     y)
echo "Installing new Fira fonts ..."
${UPDATESYSFONTS}
     ;;
     n)
        echo ""
     ;;
	esac

echo "Flashing gecko & gaia ..."
${SHALLOWFLASH} -G${GECKOGZ} -g${GAIAZIP}

${FIXINTSDCARD}

