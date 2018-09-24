A="los_harpia"
B="los.sh"
C="harpia.xml"
D="magic.sh"
E="patch.sh"
F="README.md"
URL="https://github.com/Harpia-development/los_harpia"

# Clean up existing files if present

rm -rf  "$A"
rm "$B" "$C" "$D" "$E" "$F"

echo "Fetching random shit"
git clone $URL
cd los_harpia
cp * ../
cd ../
echo "Time for some magic"
bash magic.sh
