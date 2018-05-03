# platform = multi_platform_rhel,multi_platform_ol
# reboot = false
# strategy = restrict
# complexity = high
# disruption = medium

. /usr/share/scap-security-guide/remediation_functions

# Create a list of rpms with files on the system having hash/checksum different
# from what is expected by the RPM database
REINSTALL_RPM_LIST=$(rpm -Va | grep '^..5......  [^c]' | cut -c 14- | xargs -r rpm -qf | sort -u)

# For each of the RPM packages in the list -- reinstall
package_reinstall $REINSTALL_RPM_LIST
