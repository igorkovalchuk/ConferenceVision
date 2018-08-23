
APP_PACKAGE=com.microsoft.ConferenceVision

# find this activity name here: ConferenceVision.Android/obj/Debug/android/manifest
APP_ACTIVITY=md5d1f6cf772103311695e3afd8cbf3f1ff.MainActivity

APP_NAME=ConferenceVision


APP_DIR=/wrk/projects/ConferenceVision


APP_DROID_DIR=$APP_DIR/ConferenceVision/ConferenceVision.Android

APP_DROID_CSPROJ=$APP_DROID_DIR/$APP_NAME.Android.csproj
APP_DROID_PREFIX=$APP_DROID_DIR/bin/Debug/$APP_NAME

# This is an old name of variable. In this project we don't have the PCL.
PCL_NAME=ConferenceVision

PCL_DIR=$APP_DIR/ConferenceVision/$PCL_NAME
PCL_CSPROJ=$PCL_DIR/$PCL_NAME.csproj
PCL_PREFIX=$PCL_DIR/bin/Debug/netstandard2.0/$PCL_NAME

ANDROID_OVERRIDE_DIR=/data/data/$APP_PACKAGE/files/.__override__

ANDROID_SDK=/home/workerlamp/java/sdk

AVD_NAME=Pixel_API_22
