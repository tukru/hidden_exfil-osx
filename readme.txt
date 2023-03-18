# macOS File Exfiltration Payload for Bash Bunny by Tukru

This Bash Bunny payload is designed to quickly and stealthily exfiltrate specific file types from macOS systems. It can be easily customized to search for and copy any file type that matches a specified pattern. This payload is particularly useful for penetration testers, system administrators, or IT professionals who need to retrieve specific files during an authorized security assessment or troubleshooting process.

## Features

- Exfiltrates specified file types (default: PDF, DOCX, and JPG)
- Automatically searches the `/Users` directory on the target macOS system
- Saves exfiltrated files to the Bash Bunny's loot directory
- Stealthy operation with minimal user interaction

## Usage

1. Clone this repository or download the `payload.txt` file.
2. Place the `payload.txt` file in the `payloads` folder of the `switch1` or `switch2` directory on your Bash Bunny.
3. Safely eject the Bash Bunny.
4. Set the Bash Bunny's switch to the position where you saved the payload (`switch1` or `switch2`).
5. Plug the Bash Bunny into a macOS system and wait for it to complete the exfiltration process.

## Customization

To modify the payload for your specific needs, you can change the following variables in the `payload.txt` file:

- `TARGET_FILE_TYPES`: An array of file types (patterns) to search for and exfiltrate. Example: `("*.pdf" "*.docx" "*.jpg")`
- `LOOT_DIR`: The directory on the Bash Bunny where the exfiltrated files will be stored. Example: `/root/udisk/loot/ExfiltratedFiles`
- `TEMP_DIR`: The temporary directory on the target macOS system where the files will be copied before being transferred to the Bash Bunny. Example: `/tmp/bashbunny`

## Disclaimer

This payload is for educational and authorized use only. Do not use this payload on systems that you do not have explicit permission to access. Unauthorized use of this payload on someone else's system is illegal and unethical.

## Author

Tukru - [GitHub](https://github.com/Tukru)
