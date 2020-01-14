# react-native-pulsator

## Getting started

`$ npm install react-native-pulsator --save`

### Mostly automatic installation

`$ react-native link react-native-pulsator`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-pulsator` and add `RNPReactNativePulsator.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPReactNativePulsator.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import biz.aliustaoglu.rnp.RNPReactNativePulsatorPackage;` to the imports at the top of the file
  - Add `new RNPReactNativePulsatorPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-pulsator'
  	project(':react-native-pulsator').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-pulsator/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-pulsator')
  	```


## Usage
```javascript
import RNPReactNativePulsator from 'react-native-pulsator';

// TODO: What to do with the module?
RNPReactNativePulsator;
```
