sudo useradd -m $3
sudo adduser $3 sudo
echo $3:$4 | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo hostname $2
wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip ngrok-stable-linux-386.zip
chmod +x ./ngrok
echo -e $4\n$4 | sudo passwd "$USER"
rm -f .ngrok.log
./ngrok authtoken $1
./ngrok tcp 22 --log ".ngrok.log" &
sleep 10
