# Function to reinstall packages on RHEL, Fedora, Debian, and possibly other systems.
#
# Example Call(s):
#
#     package_reinstall aide
#     package_reinstall aide screen
#
function package_reinstall {

# Check sanity of the input
if [ $# -lt "1" ]
then
  echo "Usage: package_reinstall 'package_name' ..."
  echo "Aborting."
  exit 1
fi

if which dnf ; then
  dnf reinstall -y "$@"
elif which yum ; then
  yum reinstall -y "$@"
elif which apt ; then
  apt install --reinstall -y "$@"
elif which apt-get ; then
  apt-get install --reinstall -y "$@"
else
  echo "Failed to detect available packaging system, tried dnf, yum, apt and apt-get!"
  echo "Aborting."
  exit 1
fi

}
