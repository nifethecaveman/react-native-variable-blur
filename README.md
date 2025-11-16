![VariableBlur](https://github.com/user-attachments/assets/accdd9d2-4c8a-4970-bce0-00842a47ff87)

# react-native-variable-blur

Variable/progressive/gradient blur for React Native. Does not use a gradient mask unlike other solutions, but rather progressive blur radius.

[![Version](https://img.shields.io/npm/v/react-native-variable-blur.svg)](https://www.npmjs.com/package/react-native-variable-blur)
[![Downloads](https://img.shields.io/npm/dm/react-native-variable-blur.svg)](https://www.npmjs.com/package/react-native-variable-blur)
[![License](https://img.shields.io/npm/l/react-native-variable-blur.svg)](https://github.com/patrickkabwe/react-native-variable-blur/LICENSE)

_Based on [`VariableBlur`](https://github.com/nikstar/VariableBlur)_

**WARNING**: This uses a private CAFilter API, and while obfuscated it may trigger App Store rejection.

## Requirements

- React Native v0.76.0 or higher
- Node 18.0.0 or higher

> [!IMPORTANT]  
> To Support `Nitro Views` you need to install React Native version v0.78.0 or higher.

## Installation

```bash
npm install react-native-variable-blur react-native-nitro-modules
```

## Usage

```tsx
import { VariableBlur } from 'react-native-variable-blur'

const App = () => (
  <ImageBackground source={require('./image.jpg')}>
    <VariableBlur blurRadius={10} direction="down" style={{ aspectRatio: 1 }} />
  </ImageBackground>
)
```
