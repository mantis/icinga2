#ifndef CONFIG_H
#define CONFIG_H

#cmakedefine HAVE_BACKTRACE_SYMBOLS
#cmakedefine HAVE_PIPE2
#cmakedefine HAVE_VFORK
#cmakedefine HAVE_DLADDR
#cmakedefine HAVE_LIBEXECINFO

#define ICINGA_PREFIX "${CMAKE_INSTALL_PREFIX}"
#define ICINGA_SYSCONFDIR "${CMAKE_INSTALL_FULL_SYSCONFDIR}"
#define ICINGA_LOCALSTATEDIR "${CMAKE_INSTALL_FULL_LOCALSTATEDIR}"
#define ICINGA_PKGDATADIR "${CMAKE_INSTALL_FULL_DATADIR}/icinga2"
#define ICINGA_INCLUDECONFDIR "${CMAKE_INSTALL_FULL_DATADIR}/icinga2/include"

#endif /* CONFIG_H */
