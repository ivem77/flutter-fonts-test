# Flutter Typography Demo

A Flutter application showcasing typography styles using the Satoshi font family.

## Live Demo 🌐

👉 **[Click here to view the Live Typography Demo](https://ivem77.github.io/flutter-fonts-test/)**

The live demo showcases:
- All text styles using the Satoshi font
- Dark mode interface
- Responsive layout that works on desktop and mobile browsers

## For Developers

If you want to run the demo locally or contribute to the project, follow the instructions below.

## Prerequisites

1. Install Flutter by following the [official installation guide](https://docs.flutter.dev/get-started/install)
2. Set up your development environment for:
   - iOS: Xcode (Mac only)
   - Android: Android Studio or IntelliJ IDEA
   - Web: Chrome or Edge browser

## Getting Started

1. Clone the repository:
```bash
git clone <your-repository-url>
cd my_flutter_app
```

2. Download the Satoshi font files:
   - Visit [Fontshare - Satoshi](https://www.fontshare.com/fonts/satoshi) to download the font
   - Create a directory: `assets/fonts/`
   - From the downloaded font package, copy these files to the `assets/fonts/` directory:
     - `Satoshi-Medium.otf`
     - `Satoshi-Bold.otf`

3. Install dependencies:
```bash
flutter pub get
```

## Running the Demo

Choose one of the following methods to run the demo:

### iOS (Mac only)
1. Open iOS Simulator or connect an iPhone:
   ```bash
   # Open Simulator
   open -a Simulator
   
   # OR use your connected iPhone
   ```
2. Run the app:
   ```bash
   flutter run
   ```

### Android
1. Start an Android Emulator or connect an Android device:
   ```bash
   # List available emulators
   flutter emulators
   
   # Start an emulator
   flutter emulators --launch <emulator-id>
   ```
2. Run the app:
   ```bash
   flutter run
   ```

### Web (Easiest Method)
1. Ensure Chrome or Edge is installed
2. Run the app:
   ```bash
   flutter run -d chrome
   ```

## What You'll See

The demo page displays:
- Complete typography system with Satoshi font
- Heading styles (H1-H5) with proper scaling
- Body text styles (XL, Big, p, Small) in regular and bold weights
- Special styles:
  - Tag text (uppercase, bold)
  - Overline text (uppercase)
- Number styles with tabular figures for alignment
- All text styles in a dark mode interface

## Font Licensing

⚠️ **Important:** The Satoshi font requires proper licensing for use in your projects. Visit [Satoshi Font](https://www.fontshare.com/fonts/satoshi) to obtain the necessary licenses.

## Troubleshooting

If you encounter any issues:

1. Ensure all font files are in the correct location:
   ```
   my_flutter_app/
   ├── assets/
   │   └── fonts/
   │       ├── Satoshi-Medium.otf
   │       └── Satoshi-Bold.otf
   ```

2. Verify Flutter installation:
   ```bash
   flutter doctor
   ```

3. Clean and rebuild if needed:
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```
