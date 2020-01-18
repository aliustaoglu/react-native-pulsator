import React, {Component} from 'react';
import {View, Image, StyleSheet} from 'react-native';
import RNPulsator, {invokeNativeUIFunction} from 'react-native-pulsator';
import antenna from './img/antenna.png';

const styles = {
  container: StyleSheet.create({
    marginTop: 50,
    marginLeft: 50,
    width: 100,
    height: 100,
  }),
  imgContainer: {
    backgroundColor: '#fff',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    height: '100%',
  },
};

const PulsatorWithImage = ({color, numPulse, animationDuration}) => {
  return (
    <RNPulsator
      color={color}
      numPulse={numPulse}
      animationDuration={animationDuration}>
      <View style={styles.imgContainer}>
        <Image source={antenna} />
      </View>
    </RNPulsator>
  );
};

export default class App extends Component {
  render() {
    return (
      <>
        <View style={styles.container}>
          <PulsatorWithImage
            color="#0075c4"
            numPulse={1}
            animationDuration={1}
          />
        </View>
        <View style={styles.container}>
          <PulsatorWithImage
            color="#a074c4"
            numPulse={3}
            animationDuration={1}
          />
        </View>
        <View style={styles.container}>
          <PulsatorWithImage
            color="#357064"
            numPulse={5}
            animationDuration={5}
          />
        </View>
      </>
    );
  }
}
