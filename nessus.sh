#!/bin/bash

docker run -itd --name=nagi_nessus -p 8834:8834 nagisayumaa/nessus

wget https://github.com/VHAE04/nessus_oneclick/raw/main/admin.zip

wget https://github.com/VHAE04/nessus_oneclick/raw/main/update.sh


docker exec -it nagi_nessus /bin/bash -c "rm /nessus/update.sh"

docker cp update.sh nagi_nessus:/nessus/

unzip admin.zip

docker cp admin nagi_nessus:/opt/nessus/var/nessus/users/

rm admin.zip

rm -r admin

rm update.sh

docker exec -it nagi_nessus /bin/bash /nessus/update.sh

clear
echo -e "\n\033[1;31m \033[0m"

echo -e "  \033[1;36m src: fahai \033[0m"
echo -e " \033[1;32m「 account day heh >< 」\033[0m"
echo -e " \033[1;36m username: admin \033[0m"
echo -e " \033[1;36m password: Huy@2000 \033[0m\n"
echo -e "\n \033[1;36m Host: https://127.0.0.1:8834 \033[0m\n"
echo -e "\n \033[1;36m src : elliot-bia \033[0m\n"
