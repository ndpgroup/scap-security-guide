# platform = multi_platform_rhel, multi_platform_fedora
. /usr/share/scap-security-guide/remediation_functions

replace_or_append '/etc/ssh/sshd_config' '^HostbasedAuthentication' 'no' '@CCENUM@' '%s %s'
