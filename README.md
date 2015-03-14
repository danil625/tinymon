tinymon
=======

This is a very simple service monitor for Linux.

Run by cron, does a very simple check 'service $SERVICE status'.
If the service isn't running, makes 'service $SERVICE start' and emails to $EMAIL.

Email and list of checked services are defined in the beginning of the script.

Don't forget to configure the mail system.


--
Danil V. Gerun
