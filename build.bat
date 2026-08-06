echo "Generating data.win files"
./generate_data.bat
echo "Generating xdelta files"
./generate_vcdiff.bat
echo "Generating bsdiff files"
./generate_bsdiff.bat
echo "Zipping all of that"
./zip_all.bat