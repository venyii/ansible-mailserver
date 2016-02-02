# Mail server Role for Ansible

This is an Ansible role for a complete mail server setup following the [How to set up a mail server on a GNU / Linux system](http://flurdy.com/docs/postfix/) guide by Ivar Abrahamsen.

## mailserver
* `mailserver/files/data.sql` You can find the recommended default mail data in that file. Feel free to include your own.
This is not automated at the moment.

Don't forget to change the sensitive default values in `data.sql` and `tables.sql`.

ToDo:
* [TLS](http://flurdy.com/docs/postfix/#config-secure-crypt) in Postfix & Courier

_This role has a dependency on the [Ansible MySQL](https://github.com/geerlingguy/ansible-role-mysql) role by @geerlingguy._

## mailserver-roundcube
tbd
