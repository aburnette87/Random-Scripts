# Create directories JPG, PNG, TIFF, PictureCounts.
mkdir JPG PNG TIFF PictureCounts;

# Locates file names ending in '.jpg' and copies them to 'JPG' folder.
find -name *.jpg -exec mv {} JPG \;

# Locates file names ending in '.png' and copies them to 'PNG' folder.
find -name *.png -exec mv {} PNG \;

# Locates file names ending in '.tiff' and copies them to 'TIFF' folder.
find -name *.tiff -exec mv {} TIFF \;

# FOR JPG FILES
	# Count the number of JPG files and stores output into file.
	find -iname *.jpg | wc -l > PictureCounts/JPGWordCounts.md;
		# Reads result from line 15 an stores that result as variable.
		read JPG < PictureCounts/JPGWordCounts.md;
			# Prints variable from line 17 into phrase.
			echo "There are $JPG JPG files.";

# FOR PNG FILES
	# Count the number of PNG files and prints the result on screen.
	find -iname *.png | wc -l > PictureCounts/PNGWordCounts.md;
		# Reads result from line 23 an stores that result as variable.
		read PNG < PictureCounts/PNGWordCounts.md;
			# Prints variable from line 25 into phrase.
			echo "There are $PNG PNG files.";

# FOR TIFF FILES
	# Count the number of TIFF files and prints the result on screen.
	find -iname *.tiff | wc -l > PictureCounts/TIFFWordCounts.md;
		# Reads result from line 31 an stores that result as variable.
		read TIFF < PictureCounts/TIFFWordCounts.md;
			# Prints variable from line 33 into phrase.
			echo "There are $TIFF TIFF files.";