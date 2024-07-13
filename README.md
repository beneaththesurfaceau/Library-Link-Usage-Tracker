# Library Link Usage Tracker

This repository contains scripts for tracking how many times a specific link is accessed on Windows, macOS, and Linux. These scripts log each access to a local file and then open the specified link in the default web browser.

## Purpose

The purpose of these scripts is to provide a simple, local method for logging link accesses without needing to run scripts on the website itself. This can be useful for public libraries or other institutions that need to track the usage of resources.

## Instructions

### Windows

#### Setup

1. Create a batch script file:
    ```batch
    @echo off
    set logFile=%userprofile%\Documents\link_usage_log.txt
    echo %date% %time% >> %logFile%
    start "" "http://your-weblink.com"
    ```

2. Save this file as `log_and_open_link.bat`.

3. Create a shortcut to the batch script:
    - Right-click on the desktop and select **New > Shortcut**.
    - Browse to the `log_and_open_link.bat` file and select it.
    - Name the shortcut "Are you in need?" and click **Finish**.

4. Replace the existing link shortcut with this new shortcut.

#### Usage

- Double-click the "Are you in need?" shortcut on the desktop to open the link and log the access.

### macOS

#### Setup

1. Create a shell script file:
    ```sh
    #!/bin/bash
    logFile="$HOME/Documents/link_usage_log.txt"
    echo "$(date)" >> "$logFile"
    open "http://your-weblink.com"
    ```

2. Save this file as `log_and_open_link.sh` and make it executable:
    ```sh
    chmod +x ~/log_and_open_link.sh
    ```

3. Create an Automator application:
    - Open **Automator** and select **Application**.
    - Add a **Run Shell Script** action with the script path:
        ```sh
        ~/log_and_open_link.sh
        ```
    - Save the application as "Are you in need?" and place it on the desktop.

#### Usage

- Double-click the "Are you in need?" application on the desktop to open the link and log the access.

### Linux

#### Setup

1. Create a shell script file:
    ```sh
    #!/bin/bash
    logFile="$HOME/Documents/link_usage_log.txt"
    echo "$(date)" >> "$logFile"
    xdg-open "http://your-weblink.com"
    ```

2. Save this file as `log_and_open_link.sh` and make it executable:
    ```sh
    chmod +x ~/log_and_open_link.sh
    ```

3. Create a desktop entry file:
    ```ini
    [Desktop Entry]
    Version=1.0
    Name=Are you in need?
    Comment=Open the resource link and log usage
    Exec=/home/yourusername/log_and_open_link.sh
    Icon=utilities-terminal
    Terminal=false
    Type=Application
    ```

4. Save this file as `Are_you_in_need.desktop` on the desktop and make it executable:
    ```sh
    chmod +x ~/Desktop/Are_you_in_need.desktop
    ```

#### Usage

- Double-click the "Are you in need?" desktop shortcut to open the link and log the access.

## Log File

The log file `link_usage_log.txt` is stored in the `Documents` directory of the user's home folder. It records the date and time each time the link is accessed.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss changes.

## License

This project is licensed under the Creative Commons License. See the `LICENSE` file for details.
