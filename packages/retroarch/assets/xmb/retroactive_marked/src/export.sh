for src in *.svg; do
	echo $src;
	export dest=`echo $src | sed "s/.svg/.png/"`
	mkdir -p ../png
	inkscape -z -C -w 256 -h 256 -f "$src" -e "../png/$dest"
	#rsvg-convert -b none -w 256 -h 256 "$src" -o "../png/$dest"
	#convert -density 360 -background none "$src" "../png/$dest"
	#convert "../png/$dest" -write mpr:temp -background black -alpha Remove mpr:temp -compose Copy_Opacity -composite "../png/$dest"
	#python2 ../../NPMApng2PMApng.py "../png/$dest" "../png/$dest"
done

