xrandr  --output  LVDS1 --auto --rotate normal --pos 0x0 --output HDMI1 --auto --rotate normal --right-of LVDS1

#feh --bg-fill /home/mcl/skrawki/SNielson_DarthRex.jpg
feh --bg-fill ~/skrawki/Plus_by_MEGAFATBOY.png

xmodmap -e "pointer = 3 2 1"

xprop -root -remove _ICC_PROFILE

#sudo mount /dev/sdc1 /media/who_vaccine_proofs
sudo mount /dev/sdb1 /media/cdrom

ssh-add ~/.ssh/id_dsa

crt_valid_until=`openssl x509 -noout -text -in /etc/openvpn/vpn.pem | grep "Not After" | awk -F' : ' '{print $2}'`
echo "VPN cert valid until $crt_valid_until"
