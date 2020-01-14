import React from "react";
import { StyleProp, ViewStyle } from "react-native";

type Offset = {
  x: Number;
  y: Number;
}

export interface PulsatorProperties {
  color: String;

  animationDuration: Number;

  pulseInterval: Number;

  repeatCount: Number;

  numPulse: Number;

  radius: Number;

  offset: Offset;
}

interface PulsatorStatic extends React.ComponentClass<PulsatorProperties> {}

declare var Pulsator: PulsatorStatic;

type Pulsator = PulsatorStatic;

export default Pulsator;
