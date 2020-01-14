Create modules

```sh
create-react-native-module react-native-pulsator --prefix RNP \
--module-name react-native-pulsator \
--package-identifier biz.aliustaoglu.rnpulsator \
--github-account aliustaoglu \
--author-name "Cuneyt Aliustaoglu" \
--author-email "email@email.com" \
--view \
--use-cocoapods \
--generate-example \
--example-name RNPulsator \
--example-react-native-version 0.61.5
```

Go to example folder

```sh
cd RNPulsator
yarn
cd ios
pod install
```

if you get errors installing pods, refer to below page. Change 0.61.5 if you're using a different version

https://raw.githubusercontent.com/react-native-community/rn-diff-purge/release/0.61.5/RnDiffApp/ios/Podfile

copy the parts between `# Pods for RnDiffApp` and `target 'RnDiffAppTests' do`

but keep below. Because it's the very library you'll be working on.

`pod 'react-native-pulsator', :path => '../../react-native-pulsator.podspec'`

And if the tests are not compiling. Simpy remove them. Anyway it's just a boilerplate written in Objective-C which we won't even use. See that hello world app is working.


Now close the Example app and open the  