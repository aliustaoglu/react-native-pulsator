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


Now close the Example app (RNPulsator.xcworkspace) and open the main project (RNPReactNativePulsator.xcworkspace)

Add 4 files:

RNPulsatorViewController.swift
RNPulsatorView.swift
NativeBridge.m
RNPReactNativePulsator-Bridging-Header.h (xcode creates this automatically for you)

We are not going to make our changes using this project. We only need to switch to this project only when we need to add new files. The reason we do it is because if we add a new file from inside the pods, pbxproj file won't be updated.

!IMPORTANT! : And whenever we make updates to main project, we need to delete and reinstall pods.

But when you try to install the pods, you might see the error `[!] Unable to determine Swift version for the following pods:`

This is because our library is now a Swift project but the example project does not recognise it. Easiest way is to add an empty swift file into Example project. Then Xcode will make necessary changes. 

Now switch back to (RNPulsator.xcworkspace) project and add an empty swift file anywhere inside the example project eg. `File.swift`. Now run `pod install` again in `/RNPulsator/ios` folder

Now notice that under `Pods/Development Pods/react-native-pulsator` we can see the files we added to the library project. We will make the all necessary edits inside here. It's much easier to debug this way. We only need to switch to library project when we need to add a new file.

