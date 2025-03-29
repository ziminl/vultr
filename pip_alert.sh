a=$(python3 --version | awk '{print $2}')  # Python 버전 저장
echo "Detected Python Version: $a"

sudo rm -f /usr/lib/python${a%.*}/EXTERNALLY-MANAGED
echo "Deleted /usr/lib/python${a%.*}/EXTERNALLY-MANAGED"
