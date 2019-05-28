# Sea of Leaves Character Sheet

This is pet project on creating a mobile app character sheet for the tabletop role-playing game called "Sea of Leaves". This project also serves as a means of learning how to make hybrid apps.

## Dependencies

This project is built with the following:

-   [Elm](https://elm-lang.org/) is a functional language for front-end development.
-   [Onsen UI](https://onsen.io/) contains set of UI components specifically designed for mobile apps.
-   [Apache Cordova](https://cordova.apache.org/) wraps HTML/JavaScript code into other platforms such as Android or iOS.

## Development

#### via browser

-   Run `npm run watch`. This compiles the elm code and launches the browser.

#### via Android emulator

-   Run `npm run build-elm` to compile the elm code.
-   Run `cordova emulate android` to launch the application in the Android emulator.

#### via Android device

-   Connect your Android device to your machine. Make sure USB debugging is enabled.
-   Run `npm run build-elm` to compile the elm code.
-   Run `cordova run android` to launch the application in your Android device.

_Alternatively, run `sh build.sh` for Android devices._
