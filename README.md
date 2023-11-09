# 7z Bulk Extractor

This shell script is designed to automate the process of extracting `.7z` files within a directory and then deleting the source `.7z` files upon successful extraction.

## Prerequisites

Before running this script, you must have `p7zip-full` installed on your system. This package provides the command-line utility `7z` which is essential for the script to function.

### Installing `p7zip-full` on Debian/Ubuntu:

Open a terminal and enter the following commands:

```sh
sudo apt update
sudo apt install p7zip-full
```

### Verifying Installation
Run `7z` in the terminal. If the output displays information about `7z` usage, the installation was successful.

### Usage
1. Clone the repository or download the extract7z.sh script to the local directory containing your .7z files.

2. Give execution permissions to the script:
```bash
chmod +x extract7z.sh
```
3. Execute the script:
```bash
./extract7z.sh
```
The script will loop through each .7z file in the directory and perform the following actions:
 - Extract the contents of the .7z file into the current directory.
 - If the extraction is successful, delete the original .7z file.

 ### Warning
 This script will permanently delete the `.7z` files after extraction. Ensure that you have backups of your data or are certain that the files can be safely removed.

 ### License
 This script is released under the MIT License. See `LICENSE` file for more details.