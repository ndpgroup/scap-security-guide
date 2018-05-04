# platform = multi_platform_rhel

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

populate sshd_approved_ciphers

replace_or_append '/etc/ssh/sshd_config' '^Ciphers' "$sshd_approved_ciphers" '@CCENUM@' '%s %s'
