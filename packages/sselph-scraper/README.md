Scraper

Documentation:
documentation: https://github.com/sselph/scraper/wiki

usage:
sh /storage/.kodi/addons/script.gamestarter/resources/bin/scraper.sh "SYSTEM_FOLDER_NAME" "TYPE_OF IMAGE" "ADDITIONAL_EXTENSIONS"

example:
sh /storage/.kodi/addons/script.gamestarter/resources/bin/scraper.sh nes fanart
sh /storage/.kodi/addons/script.gamestarter/resources/bin/scraper.sh all
sh /storage/.kodi/addons/script.gamestarter/resources/bin/scraper.sh psx box PBP



COMMAND LINE USAGE

sh /storage/.kodi/addons/script.gamestarter/resources/bin/scraper

```
  -add_not_found=false: If true, add roms that are not found as an empty gamelist entry.
  -append=false: If the gamelist file already exist skip files that are already listed and only append new files.
  -download_images=true: If false, don't download any images, instead see if the expected file is stored locally already.
  -extra_ext="": Comma separated list of extensions to also include in the scraper.
  -gdb_img="b": Comma seperated order to prefer images, s=snapshot, b=boxart, f=fanart, a=banner, l=logo.
  -hash_file="": The `file` containing hash information.
  -image_dir="images": The `directory` to place downloaded images to locally.
  -image_path="images": The `path` to use for images in gamelist.xml.
  -image_suffix="-image": The `suffix` added after rom name when creating image files.
  -img_format="jpg": `jpg or png`, the format to write the images.
  -img_workers=0: Use `N` worker threads to process images. If 0, then use the same value as workers.
  -mame=false: If true we want to run in MAME mode.
  -mame_img="s,t,m,c": Comma separated order to prefer images, s=snap, t=title, m=marquee, c=cabniet.
  -max_width=400: The max `width` of images. Larger images will be resized.
  -missing="": The `file` where information about ROMs that weren't scraped is added.
  -nested_img_dir=false: Use a nested img directory structure that matches rom structure.
  -no_thumb=false: Don't add thumbnails to the gamelist.
  -output_file="gamelist.xml": The XML `file` to output to.
  -overview_len=0: If set it will truncate the overview of roms to `N` characters + ellipsis.
  -refresh=false: Information will be attempted to be downloaded again but won't remove roms that are not scraped.
  -retries=2: Retry a rom `N` times on an error.
  -rom_dir=".": The `directory` containing the roms file to process.
  -rom_path=".": The `path` to use for roms in gamelist.xml.
  -scrape_all=false: If true, scrape all systems listed in es_systems.cfg. All dir/path flags will be ignored.
  -skip_check=false: Skip the check if thegamesdb.net is up.
  -start_pprof=false: If true, start the pprof service used to profile the application.
  -strip_unicode=true: If true, remove all non-ascii characters.
  -thumb_only=false: Download the thumbnail for both the image and thumb (faster).
  -thumb_suffix="-thumb": The `suffix` added after rom name when creating thumb files.
  -use_filename=false: If true, use the filename minus the extension as the game title in xml.
  -use_gdb=true: Use the hash.csv and theGamesDB metadata.
  -use_nointro_name=true: Use the name in the No-Intro DB instead of the one in the GDB.
  -use_ovgdb=false: Use the OpenVGDB if the hash isn't in hash.csv.
  -version=false: Print the release version and exit.
  -workers=1: Use `N` worker threads to process roms.
```
