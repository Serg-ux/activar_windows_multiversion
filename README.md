# Windows Activation Script

This batch file automates the process of activating a Windows operating system using a Key Management Service (KMS) server. It checks if the user is running the script as an administrator, allows the user to choose their Windows version, and then activates Windows using a KMS server and a product key.

## Key Components

### 1. Administrator Check
The script first checks if it is being run with administrator privileges using the `cacls` command. 

If the script is not run as an administrator, it displays an error message and exits. The check is performed by attempting to access a protected system file and checking for an error level.

### 2. Color Customization
The script uses the `color` command to set text colors for different stages of the process. This is done to improve the readability of the output. 

- `colorMensaje` is the color for normal messages.
- `colorError` is the color used for error messages.

### 3. Menu for OS Selection
A menu is displayed where the user is prompted to select their version of Windows. The options include:
  - Windows 10 Home
  - Windows 10 Pro
  - Windows 11 Home
  - Windows 11 Pro

The user selects an option by entering a number corresponding to their Windows version.

### 4. Product Key Assignment
Based on the user's selection, the script assigns a specific product key for that version of Windows:
- Windows 10 Home: `TX9XD-98N7V-6WMQ6-BX7FG-H8Q99`
- Windows 10 Pro: `VK7JG-NPHTM-C97JM-9MPGT-3V66T`
- Windows 11 Home: `TX9XD-98N7V-6WMQ6-BX7FG-H8Q99`
- Windows 11 Pro: `W269N-WFGWX-YVC9B-4J6C9-T83GX`

If the user selects an invalid option, the script will display an error message and exit.

### 5. Activation Process
After the OS is selected, the script activates Windows by configuring the KMS server and applying the correct product key:
- `slmgr /skms kms.digiboy.ir` sets the KMS server.
- `slmgr /ipk "%clave%"` installs the product key.
- `slmgr /ato` attempts to activate Windows using the KMS server.

## Script Flow

1. **Admin Check**: Verifies the user has admin privileges.
2. **Menu Display**: Displays a menu to select the Windows version.
3. **Key Assignment**: Based on the selected option, the script assigns a product key.
4. **Activation**: Uses `slmgr` commands to activate Windows.

## Example Usage

1. Save the script as a `.bat` file.
2. Right-click the file and select **Run as Administrator**.
3. Select your version of Windows when prompted.
4. The script will activate Windows using the selected key.

## Error Handling

- **Admin Privileges**: If the script is not run as an administrator, it will display an error message and exit.
- **Invalid Selection**: If the user selects an invalid option, the script will display an error message and exit.

## Notes

- This script is intended for educational or troubleshooting purposes only. Use it in accordance with Microsoft's licensing agreements.
- The product keys used in the script are placeholders and may not be secure or valid for actual activation.
