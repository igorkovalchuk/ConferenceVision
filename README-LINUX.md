How to build this project on Linux using https://github.com/igorkovalchuk/xamarin-forms-android-linux-tools

    $ cd ConferenceVision

modify config.sh - set the

    APP_DIR
    ANDROID_SDK directory
    AVD_NAME

this app has minSdkVersion = 21 (Lollipop 5.0) in Properties/AndroidManifest.xml

Modify ConferenceVision.Android.csproj otherwise nuget restore will not work.

    <PropertyGroup>
      <AndroidSdkDirectory>/YOUR_PATH/java/sdk</AndroidSdkDirectory>
    </PropertyGroup>


    $ dotnet restore

    $ nuget restore

    $ ./build.sh

Issue: ConferenceVision.Android/Resources/Resource.Designer.cs' could not be found.

change 

    Compile Include="Resources\Resource.Designer.cs"
    
to

    Compile Include="Resources\Resource.designer.cs"

If you want to use an emulator then specify AndroidSupportedAbis for your emulator x86 or x86_64.
Please set the correct value or several values (x86_64,x86,armeabi-v7a), otherwise the application will not install INSTALL_FAILED_NO_MATCHING_ABIS or crash.

    <!--
      <AndroidSupportedAbis />
    -->

    <AndroidSupportedAbis>x86_64,x86,armeabi-v7a</AndroidSupportedAbis>

    $ ./build.sh

Does it work? If not, please open an issue for me.

    $ ./emulator.sh
    $ ./deploy.sh
    $ ./run.sh

Also you may use the fast.sh - a single iteration (a change to netstandard2.0 project) takes less than 10 seconds for me.

VSCode

    Failed to load project file '.../ConferenceVision/ConferenceVision.iOS/ConferenceVision.iOS.csproj'.

And seems it is necessary for VSCode on Linux to comment out some lines in ConferenceVision.sln

    # Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "ConferenceVision.iOS", "ConferenceVision\ConferenceVision.iOS\ConferenceVision.iOS.csproj", "{EA123FAD-2B41-4785-B223-45BAEB0B326F}"
    # EndProject

The next errors seems doesn't break the VSCode intellisense today:

    Error: Package 'Xamarin.Plugin.ImageEdit 0.1.0' was restored using '.NETFramework,Version=v4.6.1' instead of the project target framework '.NETStandard,Version=v2.0'. This package may not be fully compatible with your project.
