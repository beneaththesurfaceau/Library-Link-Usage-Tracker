:: In Windows, to track how many times the shortcut to a website has been opened, we can use a simple batch script that logs each click to a local file.
:: This is batch script that logs each time it is executed.
:: Place or replace an existing shortcut with a shortcut to the batch script.
:: This batch script will then open the original web link after logging the click.


:: @echo off stops the script from being shown to the user
@echo off

:: This line sets where the log file will be stored, along with the name of the file. Change to meet your needs.
set logFile=%userprofile%\Documents\link_usage_log.txt

:: This is what will be written to the file. "echo" is the function that write to the file. This logs the the date and time the link was opened.
echo %date% %time% >> %logFile%

:: Launches the web link. Replace the link to reflect the website you wish to link to.
start "" "http://your-weblink.com"
