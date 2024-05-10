
# Termux Setup

This script will set up a scrcpy session on your Termux device, allowing you to mirror and control your Android device from your Termux environment. Before running the script, please follow these steps:

# Prerequisites

*Note: All links provided here are not sponsored.*

1. Check your device dimensions:

 Install [Screen Info](https://play.google.com/store/apps/details?id=com.sturnus.screeninfo&hl=en_US)
 app on your device. And note down the resolution.

2. Install Termux-X11: (*)

Download and install the Termux-X11 apk.

[Termux repo](https://github.com/termux/termux-x11/releases) (or) [Direct download](https://github.com/termux/termux-x11/releases/download/nightly/app-universal-debug.apk)

3. Enable USB Debugging: 

On your Android device, go to Settings > Developer Options > USB Debugging and enable USB Debugging.

## Usage

1. **Clone the repository**: Clone this repository to your Termux environment or copy the `install.sh` script to your Termux device.

2. **Make the script executable**: Run the following command in Termux:

   ```bash
   chmod +x install.sh
   ```

3. **Run the script**: Execute the script with the following command:

   ```bash
   ./install.sh
   ```

   The script will prompt you to enter the device dimensions (height and width) and the IP address and port for ADB connection. If you don't provide any input, it will use the default values (1280x720, 127.0.0.1:5555).

4. **Connect your Android device**: Connect your Android device to your computer/laptop via USB cable.

5. **Start scrcpy**: After successful ADB connection, the script will start the scrcpy session, and you should see your Android device's screen mirrored on the Termux display.

6. **Control your device**: You can now control your Android device using keyboard shortcuts or tapping/swiping the Termux display.

## Keyboard Shortcuts

- `Ctrl+b`: Turn screen mirroring on/off
- `Ctrl+x`: Resize mirrored window to remove black borders
- `Right-click`: Show a menu to simulate various Android keys
- `Ctrl+v`: Enable/disable FPS counter (show device FPS)
- `Ctrl+s`: Enable/disable
 control (power button, volume up/down)
- `Ctrl+m`: Enable/disable screen mirroring

For more information and advanced usage, refer to the [scrcpy documentation](https://github.com/Genymobile/scrcpy).

Enjoy controlling your Android device from Termux!
```

This README file provides a step-by-step guide for users to set up and use the `setup_scrcpy.sh` script. It explains the prerequisites, such as checking the device dimensions and installing Termux-X11, as well as enabling USB Debugging on the Android device.

The usage section walks the user through cloning the repository, making the script executable, running the script, connecting the Android device, and starting the scrcpy session. It also includes a list of keyboard shortcuts for controlling the mirrored Android device.

Finally, the README encourages users to refer to the official scrcpy documentation for more advan
ced usage and information.

