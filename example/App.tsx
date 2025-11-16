import React from 'react';
import { View, StyleSheet, Image } from 'react-native';
import { VariableBlur } from 'react-native-variable-blur';

function App(): React.JSX.Element {
  return (
    <View style={styles.container}>
      <Image source={require('./Wenzel_Hablik.jpg')} style={styles.image} />
      <VariableBlur blurRadius={12} direction="up" style={styles.blur} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'flex-end',
    alignItems: 'center',
  },
  image: {
    width: '80%',
    height: '100%',
    top: '10%',
  },
  blur: {
    aspectRatio: 2,
    position: 'absolute',
    bottom: 0,
    width: '100%',
  },
});

export default App;
