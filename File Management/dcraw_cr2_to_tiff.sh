# Quickly using DCRAW to converting Canon EOS DSLR raw images (.CR2) to .TIFF files for editing.
# Run from working directory.
# Run commented-out exiv2 line for EXIF privacy enhancements.


photo = ("*.CR2")

for $photo in $cwd
do
   dcraw -v -w -T $photo
done

# exiv2 -da rm *.TIFF
