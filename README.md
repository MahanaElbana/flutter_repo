# Chat Flutter App 🚀

A new Flutter project.

# My experience in developing applications using Flutter 🚀

## 1- How to build **APK** in **release mode** to check application before upload **AAP** on Google Play 🥇

```
$ flutter build apk --release --split-per-abi
```
## 2- How to build **AAP** in **release mode** to upload on Google Play 🥇
```
$ flutter build appbundle --release 
```

## 3- How to add **lottie animation** in flutter project  🥇

 - Download animated image as **GIF** from the following site   
```
https://lottiefiles.com/
```
- in **pubspec.yaml** add

```
  assets:
    - assets/images/animated_image.gif
```
 - Dart 
```
Image.asset("animated_image.gif)
```
## 4- how to create **QRcode** for your application on google play 🥇
- get url of application from google play 
- go the following link to make  qrcode using link 
```
https://www.qrcode-monkey.com/#url
``` 
## 5- how to add hexa color in flutter project  🥇

 - go to the following link to get hexa color   
```
https://www.w3schools.com/colors/colors_picker.asp
https://color.adobe.com/create/color-wheel
https://coolors.co/
```
 - Dart code 
```
Color(0xf3f5ff4)
```
4] -- ===> for getting on Latitude and Longitude
      https://www.latlong.net/     
   -- services ==> location service is enabled or false .
   -- permission ==> is moblie app can reach location services or not .   
      

# Happy Meals Restaurant APP
 food app for happy meals 

## How to build apk 🚀
```
flutter build apk
```

# where is the path of AndroidManifest.xml 🚀
```
fluuter_project
  android 
     app 
        src
           main 
             AndroidManifest.xml
```
## How to run appliction "flutter project on linux desktop" 🚀
```
flutter run -d linux
```
# the best commands  🚀

```
flutter create --platforms=linux .
flutter run -d linux 
flutter devices 
flutter 
```

# How to extract AAB APP  💯 
```
flutter build appbundle --release
```

# How to upload flutter application on google play 🚀
 -  Go to the following link 
    ```
    https://docs.flutter.dev/deployment/android
    ```
    - Create an upload keystore 

- Copy key to the following path in flutter project 
    - **flutter project** 
        - **android**
            - **app**     
                - **upload-keystore.jks**

- Create file with name **key.properties** in the following path 
   - **android**
      - **key.properties** 

- Go to this file **key.properties** and add 
    - **Reference the keystore from the app**
    ```
    storePassword=password
    keyPassword=password
    keyAlias=upload
    storeFile=../app/upload-keystore.jks
    ``` 

- Go to the following path 
  
  - android 
    - app
      -  build.gradle
  - then apply 
   ```
   Configure signing in gradle
   ```  
- Go to   **.gitignore** and the add 
   ```
     **/android/key.properties
     **/android/app/upload-keystore.jks
   ```
## packages 
 - hive 2.2.3
```
https://pub.dev/packages/hive
```
 - get 4.6.5
```
https://pub.dev/packages/get
```



How to change theme(fromSwitch) in flutter ? 🚀

```dart
 //------------- color scheme ----------------//

    // ---- method 1 --------//

    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   primary: ColorManager. kPrimaryColor, // appBar color
    //   secondary:ColorManager. kSecondaryColor, // floatingActionButton
    //   error: ColorManager. kErrorColor,
    // ),

    //------- method 2 --------//

    // colorScheme: const ColorScheme.dark(
    //     brightness: Brightness.light,
    //     onPrimary: Colors.white,
    //     primary:  ColorManager. kPrimaryColor, // appBar color
    //     secondary:  ColorManager. kSecondaryColor,
    // ),

    //------- method 3 --------//

   // colorScheme: const ColorScheme.light(
   //     primary: ColorManager.kPrimaryColor,
   //     secondary: ColorManager.kSecondaryColor),

   //------- method 4 --------//

   // colorScheme: const ColorScheme.dark().copyWith(
   //    primary: ColorManager.kPrimaryColor,
   //    secondary:  ColorManager.kSecondaryColor,
   //    brightness: Brightness.light ,
   //    onPrimary: Colors.white
   //  ),

    //------- method 5 --------//
    // colorScheme:  ColorScheme.fromSeed(seedColor: Colors.red).copyWith(
    //   primary: ColorManager.kPrimaryColor,
    //   secondary: ColorManager.kSecondaryColor,
    // ),

    //------- method 6 --------//
      colorScheme: const ColorScheme.highContrastDark().copyWith(
      primary: ColorManager.kPrimaryColor,
      secondary: ColorManager.kSecondaryColor,
      onPrimary: Colors.white,
      brightness: Brightness.light

    ),
    //---------------- color scheme ---------------//
```
## Running different build commands to get different native binaries of the same app 
``` s
$ flutter build appbundle
$ flutter build ios
$ flutter build web
$ flutter build macos
$ flutter build windows
$ flutter build linux
```


## How to use Hive in flutter project 🚀
 - Add the following to your **pubspec.yaml**:
```
dependencies:
  hive: ^[version]
  hive_flutter: ^[version]

dev_dependencies:
  hive_generator: ^[version]
  build_runner: ^[version]
```
 Initialize