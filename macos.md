= SPEC-001: Tracking Link Usage on macOS
:sectnums:
:toc:

== Background

To track how many times a specific link has been opened on a public library's desktop, a solution is needed that logs each time the link is accessed. This solution must work locally without the ability to run scripts on the website.

== Requirements

* Log each time the link is accessed.
* Store the log file locally.
* Ensure the solution is easy to set up and use on macOS.

== Method

The method involves creating a shell script that logs each access to a file and then opens the web link. This script is then wrapped in an Automator application to make it easily accessible as a clickable desktop icon.

== Implementation

1. Create the shell script `log_and_open_link.sh`:

    ```sh
    #!/bin/bash
    logFile="$HOME/Documents/link_usage_log.txt"
    echo "$(date)" >> "$logFile"
    open "http://your-weblink.com"
    ```

2. Make the script executable:

    ```sh
    chmod +x log_and_open_link.sh
    ```

3. Create an Automator application:
    * Open Automator and select **Application**.
    * Add a **Run Shell Script** action with the script path.
    * Save the application on the desktop.

== Milestones

1. Creation of the shell script.
2. Making the script executable.
3. Creation and verification of the Automator application.

== Gathering Results

The log file located at `~/Documents/link_usage_log.txt` will record each access, providing a count of how many times the link has been opened.

