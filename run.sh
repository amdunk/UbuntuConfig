echo 'https://raw.githubusercontent.com/amdunk/UbuntuDockerConfig/master/' > /tmp/shell_root
apt-get update
yes | apt-get install curl
yes | apt-get install python
curl -fsSL `cat /tmp/shell_root`run_by_root.sh | sh
