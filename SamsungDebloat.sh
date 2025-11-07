#!/bin/bash

echo "You are now debloating your Samsung"

#Remove Facebook bloat
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.faceboo.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.katana

#Remove Office
#adb shell pm uninstall -k --user 0 com.microsoft.skydrive (ONEDRIVE)
adb shell pm uninstall -k --user 0 com.microsoft.office.outlook
adb shell pm uninstall -k --user 0 com.microsoft.office.word
adb shell pm uninstall -k --user 0 com.microsoft.office.excel
adb shell pm uninstall -k --user 0 com.microsoft.office.powerpointù

#Remove AR Stuff (Drawing, Emoji, Avatars, Stickers
adb shell pm uninstall -k --user 0 com.samsung.android.ardrawing
adb shell pm uninstall -k --user 0 com.samsung.android.aremoji
adb shell pm uninstall -k --user 0 com.samsung.android.aremojieditor
adb shell pm uninstall -k --user 0 com.sec.android.mimage.avatarstickers
adb shell pm uninstall -k --user 0 com.samsung.android.app.camera.sticker.stamp.preload

#Remove Samsung Kids
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall -k --user 0 com.sec.android.app.kidshome

#Disabling services
adb shell pm disable-user --user 0 com.google.android.feedback
adb shell pm disable-user --user 0 com.samsung.android.aremoji
adb shell pm disable-user --user 0 com.samsung.android.ardrawing
adb shell pm disable-user --user 0 com.sec.android.mimage.avatarstickers

#by Adrian