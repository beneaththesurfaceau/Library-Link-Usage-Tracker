= SPEC-002: Tracking Link Usage on Linux
:sectnums:
:toc:

== Background

To track how many times a specific link has been opened on a public library's desktop, a solution is needed that logs each time the link is accessed. This solution must work locally without the ability to run scripts on the website.

== Requirements

* Log each time the link is accessed.
* Store the log file locally.
* Ensure the solution is easy to set up and use on Linux.

== Method

The method involves creating a shell script that logs each access to a file and then opens the web link. This script is then linked to a desktop shortcut to make it easily accessible.

== Implementation

1. Create the shell script `log_and_open_link.sh`:

    ```sh
    #!/bin/bash
    logFile="$HOME/Documents/link_usage_log.txt"
    echo "$(date)" >> "$logFile"
    xdg-open "http://your-weblink.com"
    ```

2. Make the script executable:

    ```sh
    chmod +x ~/log_and_open_link.sh
    ```

3. Create a desktop shortcut:
    * Create a `.desktop` file:
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
    * Make the desktop entry executable:
        ```sh
        chmod +x ~/Desktop/Are_you_in_need.desktop
        ```

== Milestones

1. Creation of the shell script.
2. Making the script executable.
3. Creation and verification of the desktop shortcut.

== Gathering Results

The log file located at `~/Documents/link_usage_log.txt` will record each access, providing a count of how many times the link has been opened.

