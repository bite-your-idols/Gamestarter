#!/bin/bash
# documentation: https://github.com/sselph/scraper/wiki
# ln -s /storage/.config/emulationstation /storage/.emulationstation
# /storage/.config/emulationstation/sselph-scraper/scraper -thumb_only -rom_dir="/storage/emulators/roms/nes" -output_file="/storage/.config/emulationstation/gamelists/nes/gamelist.xml" -workers=3  -add_not_found=true -image_dir="/storage/.config/emulationstation/artworks/nes" -image_path="/storage/.config/emulationstation/artworks/nes" && /storage/.config/emulationstation/sselph-scraper/scraper -thumb_only -rom_dir="/storage/emulators/roms/snes" -output_file="/storage/.config/emulationstation/gamelists/snes/gamelist.xml" -workers=3 -add_not_found=true -image_dir="/storage/.config/emulationstation/artworks/snes" -image_path="/storage/.config/emulationstation/artworks/snes"

SCRAPER_PATH="/storage/.config/emulationstation/sselph-scraper/scraper"
ROMS_PATH="/storage/emulators/roms"
ARTS_PATH="/storage/emulators/arts"
TIPO=$2

CONSOLE=$1
EXTRA_EXT=$3
#EXTRA_EXT="pbp"

if [ "$CONSOLE" = "all" ]; then
	$SCRAPER_PATH -thumb_only -workers=3  -add_not_found=true -scrape_all=true -skip_check
else
	if [ "$TIPO" = "fanart" ]; then
		# fanarts
		# IMG_SUFFIX="_fanart"
		# IMG_TYPE="s"
		# IMG_WIDTH=1200

		ARTS_PATH="/storage/emulators/arts-"$CONSOLE
		IMG_SUFFIX=""
		IMG_TYPE="s"
		IMG_WIDTH=1200

	else
		# thumbs
		ARTS_PATH="/storage/emulators/arts"
		IMG_SUFFIX=""
		IMG_TYPE="b"
		IMG_WIDTH=600
	fi
fi


$SCRAPER_PATH -image_suffix=$IMG_SUFFIX -console_img=$IMG_TYPE -max_width=$IMG_WIDTH  -skip_check -extra_ext=$EXTRA_EXT -rom_dir=$ROMS_PATH/$CONSOLE -workers=3  -add_not_found=true -image_dir=$ARTS_PATH/$CONSOLE

#thumbs
#/storage/.config/emulationstation/sselph-scraper/scraper -image_suffix="" -console_img="b" -max_width=600 -rom_dir="/storage/emulators/roms/gb" -workers=3  -add_not_found=true -image_dir="/storage/emulators/arts_ES/gb"
#fanarts
# /storage/.config/emulationstation/sselph-scraper/scraper -image_suffix="_fanart" -console_img="s"  -max_width=1200 -rom_dir="/storage/emulators/roms/gb" -workers=3  -add_not_found=true -image_dir="/storage/emulators/arts_ES/gb"


# -extra_ext="pbp"

# scrap de todos los systemas definidos en emulationstation
# /storage/.config/emulationstation/sselph-scraper/scraper -thumb_only -workers=3  -add_not_found=true -scrape_all=true
