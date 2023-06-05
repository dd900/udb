# UDB [Ultimate-Download-Bot]

Welcome to the UDB, the Ultimate-Download-Bot for Anime and Drama! 🎉

## Insipiration

It is ia good weekend and you found a good anime to watch. But the effort of downloading all episodes (especially for One Piece 😅), the pain is unimaginable. So, this is created to help all such troubled souls. As Ikta Solorok once said: `Laziness is the mother of evolution`

## Overview

The UDB is a fantastic tool designed for all the anime and drama lovers out there. With just a few clicks in the command line, you can effortlessly download entire anime series or drama shows, saving you the hassle of manually downloading each episode one by one.

## Features

- **Batch Download:** Download complete anime series or drama shows with a single command.
- **Fast and Efficient:** The downloader is optimized for speed, allowing you to grab your favorite episodes in no time.
- **Customizable Options:** Choose specific seasons, episodes, or ranges to download according to your preferences.
- **Quality Selection:** Select the video quality that suits your needs.
- **Auto-Retry:** If a download fails, the downloader automatically retries until successful.
- **Informative Progress Bar:** Track the progress of your downloads with a visually appealing progress bar.

## Requirements

To use the UDB, make sure you have the following requirements met:

- Python 3.8 or higher
- Internet connection
- pip dependencies
  - _jsbeautifier_ to execute javascript for retrieving HLS
  - _tqdm_ to show download progress
  - _pycryptodome_ to encrypt/decrypt for Drama
- ffmpeg
  - Windows:
    - download ffmpeg from [here](https://ffmpeg.org/download.html)
    - add to Environment variables > PATH
  - Linux (Ubuntu):
    - sudo apt install -y ffmpeg

## Installation

1. Clone the repository:

    ```
    git clone https://github.com/Prudhvi-pln/udb.git
    ```

2. Navigate to the project directory:

    ```
    cd udb
    ```

3. Install the required dependencies:

    ```
    pip install -r requirements.txt
    ```
5. Edit the configuration in your favourite editor:

    ```
    vi config.yaml
    ```

5. You're all set! Start downloading your favorite anime or drama by running:

    ```
    python udb.py
    ```

## Usage

The UDB is super easy to use. Follow these steps:

1. Launch your favorite command-line interface.
2. Navigate to the project directory.
3. Run the following command:

```
python udb.py
```

4. Sit back, relax, and let the magic happen! The downloader will guide you through the process and download your selected anime or drama series.

## Contributing

I welcome contributions from fellow anime and drama enthusiasts like you! If you have any ideas, improvements, or bug fixes, feel free to open an issue or submit a pull request. Let's make this downloader even more amazing together!

## Acknowledgements

I would like to express my gratitude to the creators and developers of the open-source libraries and tools used in this project. Without their contributions, this downloader would not be possible.

## Known issues
 - Progress bar printing duplicate lines for same file
   - This issue occurs due to ascii characters used and depends on the command line (Prefer Powershell in Windows)

---

Start binge-watching your favorite anime and drama series like never before! Happy downloading! 🍿✨
