LineageOS Pie (16.X) for Harpia
=====================================

Current Status
--------------

Everything is working.

Download
--------

You can grab some links from the [XDA thread](https://forum.xda-developers.com/g4-play/development/rom-lineageos-16-0-t3853758) or just join us at Telegram in the [Prebuilts Delivery Channel](https://t.me/romdelivery) or the [Dev support and off-topic group](https://t.me/somefeak) (previously SomeFeaK group).

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
