-- intermediate schema update
-- for MySQL >= 5.7
-- Not really needed, since MySQL upgrades internally to a non DEFAULT schema

ALTER TABLE icinga_acknowledgements
  MODIFY COLUMN comment_data TEXT character set latin1;

ALTER TABLE icinga_commands
  MODIFY COLUMN command_line TEXT character set latin1;

ALTER TABLE icinga_commenthistory
  MODIFY COLUMN comment_data TEXT character set latin1;

ALTER TABLE icinga_comments
  MODIFY COLUMN comment_data TEXT character set latin1;

ALTER TABLE icinga_configfilevariables
  MODIFY COLUMN varvalue TEXT character set latin1;

ALTER TABLE icinga_contactnotificationmethods
  MODIFY COLUMN command_args TEXT character set latin1;

ALTER TABLE icinga_customvariables
  MODIFY COLUMN varvalue TEXT character set latin1;

ALTER TABLE icinga_customvariablestatus
  MODIFY COLUMN varvalue TEXT character set latin1;

ALTER TABLE icinga_downtimehistory
  MODIFY COLUMN comment_data TEXT character set latin1;

ALTER TABLE icinga_eventhandlers
  MODIFY COLUMN command_args TEXT character set latin1,
  MODIFY COLUMN command_line TEXT character set latin1,
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT;

ALTER TABLE icinga_externalcommands
  MODIFY COLUMN command_args TEXT character set latin1;

ALTER TABLE icinga_hostchecks
  MODIFY COLUMN command_args TEXT character set latin1,
  MODIFY COLUMN command_line TEXT character set latin1,
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT,
  MODIFY COLUMN perfdata TEXT character set latin1;

ALTER TABLE icinga_hosts
  MODIFY COLUMN check_command_args TEXT character set latin1,
  MODIFY COLUMN eventhandler_command_args TEXT character set latin1,
  MODIFY COLUMN notes TEXT character set latin1,
  MODIFY COLUMN notes_url TEXT character set latin1,
  MODIFY COLUMN action_url TEXT character set latin1,
  MODIFY COLUMN icon_image TEXT character set latin1,
  MODIFY COLUMN icon_image_alt TEXT character set latin1,
  MODIFY COLUMN vrml_image TEXT character set latin1,
  MODIFY COLUMN statusmap_image TEXT character set latin1;

ALTER TABLE icinga_hoststatus
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT,
  MODIFY COLUMN perfdata TEXT character set latin1,
  MODIFY COLUMN event_handler TEXT character set latin1,
  MODIFY COLUMN check_command TEXT character set latin1;

ALTER TABLE icinga_logentries
  MODIFY COLUMN logentry_data TEXT character set latin1;

ALTER TABLE icinga_notifications
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT;

ALTER TABLE icinga_programstatus
  MODIFY COLUMN global_host_event_handler TEXT character set latin1,
  MODIFY COLUMN global_service_event_handler TEXT character set latin1;

ALTER TABLE icinga_runtimevariables
  MODIFY COLUMN varvalue TEXT character set latin1;

ALTER TABLE icinga_scheduleddowntime
  MODIFY COLUMN comment_data TEXT character set latin1;

ALTER TABLE icinga_servicechecks
  MODIFY COLUMN command_args TEXT character set latin1,
  MODIFY COLUMN command_line TEXT character set latin1,
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT,
  MODIFY COLUMN perfdata TEXT character set latin1;

ALTER TABLE icinga_services
  MODIFY COLUMN check_command_args TEXT character set latin1,
  MODIFY COLUMN eventhandler_command_args TEXT character set latin1,
  MODIFY COLUMN notes TEXT character set latin1,
  MODIFY COLUMN notes_url TEXT character set latin1,
  MODIFY COLUMN action_url TEXT character set latin1,
  MODIFY COLUMN icon_image TEXT character set latin1,
  MODIFY COLUMN icon_image_alt TEXT character set latin1;

ALTER TABLE icinga_servicestatus
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT,
  MODIFY COLUMN perfdata TEXT character set latin1,
  MODIFY COLUMN event_handler TEXT character set latin1,
  MODIFY COLUMN check_command TEXT character set latin1;

ALTER TABLE icinga_statehistory
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT;

ALTER TABLE icinga_systemcommands
  MODIFY COLUMN command_line TEXT character set latin1,
  MODIFY COLUMN output TEXT character set latin1,
  MODIFY COLUMN long_output TEXT;
