LineageOS Pie (16.X) for Harpia
=====================================

Current Status
--------------

IDK

Download
--------

IDK

Build Instructions
------------------
Create a build directory

	mkdir -p los
	cd los

Initialize your local repository using the LOS trees:

	repo init -u git://github.com/LineageOS/android.git -b lineage-16.0

Now move your magic wand
	
	wget -O los.sh https://github.com/Harpia-development/los_harpia/raw/master/los.sh
	bash los.sh

Do this everytime before every sync for tracking changes.


Then to sync up:

     repo sync  --force-sync --force-broken --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j$(nproc --all)
     
Do this everything after sync for applying patches.
	

Now start the build...

	. build/envsetup.sh 
	lunch los_harpia-userdebug
	brunch harpia   or   mka otapackage

Please see the [LineageOS WIKI](https://wiki.lineageos.org/) for further information.
