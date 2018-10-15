# Clean up existing files if present

rm -rf  'los_harpia'
rm 'los.sh' 'harpia.xml' 'magic.sh' 'README.md'

echo "Fetching random shit"
git clone 'https://github.com/Harpia-development/los_harpia'
cd los_harpia
cp * ../
cd ../
echo "Time for some magic"
bash magic.sh
