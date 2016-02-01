CREATE TABLE IF NOT EXISTS `aliases` (
  `pkid` smallint(3) NOT NULL auto_increment,
  `mail` varchar(120) NOT NULL default '',
  `destination` varchar(120) NOT NULL default '',
  `enabled` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`pkid`),
  UNIQUE KEY `mail` (`mail`)
) ;

CREATE TABLE IF NOT EXISTS `domains` (
  `pkid` smallint(6) NOT NULL auto_increment,
  `domain` varchar(120) NOT NULL default '',
  `transport` varchar(120) NOT NULL default 'virtual:',
  `enabled` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`pkid`)
) ;

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(128) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `uid` smallint(5) unsigned NOT NULL default '5000',
  `gid` smallint(5) unsigned NOT NULL default '5000',
  `home` varchar(255) NOT NULL default '/var/spool/mail/virtual',
  `maildir` varchar(255) NOT NULL default 'blah/',
  `enabled` tinyint(1) NOT NULL default '1',
  `change_password` tinyint(1) NOT NULL default '1',
  `clear` varchar(128) NOT NULL default 'ChangeMe',
  `crypt` varchar(128) NOT NULL default 'sdtrusfX0Jj66',
  `quota` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ;
