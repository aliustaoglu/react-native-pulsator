# react-native-pulsator

Pulsator for React Native. This library binds iOS and Android libraries from below repositories:

iOS: https://github.com/shu223/Pulsator
Android: https://github.com/booncol/Pulsator4Droid


## Getting started

`$ yarn add react-native-pulsator`

And that's it. React Native will link native libraries automatically. 

Wrap a child view with RNPulsator and the library will create pulsing effects from the center of the view.

## Usage
```javascript
import RNPulsator from 'react-native-pulsator';
import img from './img.png'
// .....

<View style={styles.container}>
    <RNPulsator
      color="#0075c4"
      numPulse={1}
      animationDuration={1}>
      <View style={styles.imgContainer}>
        <Image source={img} />
      </View>
    </RNPulsator>
</View>



```

## Props

### color

The colour of the pulse

### numPulse

Number of pulses. In other words the number circles that are pulsing on each repeat.


### animationDuration

How long will each animation take in seconds.


## DEMO

<table>
<tr>
	<th>Android</th>
	<th>iOS</th>
</tr>
<tr>
	<td>
	<img src="https://raw.githubusercontent.com/aliustaoglu/react-native-pulsator/master/RNPulsator/screenshots/android.gif" width=400 />
	</td>
	<td>
		<img src="https://raw.githubusercontent.com/aliustaoglu/react-native-pulsator/master/RNPulsator/screenshots/iOS.gif" width="400" />
	</td>
</tr>
</table>
