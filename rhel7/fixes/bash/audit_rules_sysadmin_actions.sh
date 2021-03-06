# platform = Red Hat Enterprise Linux 7

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
fix_audit_watch_rule "auditctl" "/etc/sudoers" "wa" "privileged-actions"
fix_audit_watch_rule "auditctl" "/etc/sudoers.d/" "wa" "privileged-actions"
fix_audit_watch_rule "augenrules" "/etc/sudoers" "wa" "privileged-actions"
fix_audit_watch_rule "augenrules" "/etc/sudoers.di/" "wa" "privileged-actions"
