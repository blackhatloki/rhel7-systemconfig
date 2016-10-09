#version=DEVEL
# System authorization information
auth --enableshadow --passalgo=sha512
# Use network installation
url --url="ftp://192.168.1.110/pub"
# Use graphical install
# graphical
text
reboot
# Run the Setup Agent on first boot
firstboot --enable
ignoredisk --only-use=sda
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8

# Network information
network  --bootproto=static --device=eno16777736 --ipv6=auto --activate --onboot yes --ip 192.168.1.230 --netmask 255.255.255.0 --gateway 192.168.1.1 --nameserver 192.168.1.1
# network  --bootproto=dhcp --device=eno16777736 --ipv6=auto --activate
network  --hostname=firefox.rhel7

# Root password
rootpw --iscrypted $6$wlHzOhNNOsdGPpHL$Bw3TR/zpZcgG4WfU.gSYbfTITujPS30QGk3j0YsyZ4tR1jkxGyFAvuYiErovNDDkSQFNv/7t.SSXfmarNXl9p.
# System timezone
timezone America/New_York --isUtc --ntpservers=192.168.1.110

firewall --disabled
authconfig --enableshadow --enablemd5
selinux --disabled

# System bootloader configuration
bootloader --append=" crashkernel=auto" --location=mbr --boot-drive=sda
### autopart --type=lvm
# Partition clearing information
# clearpart --none --initlabel
clearpart --drives=sda --initlabel 
# 100MB /boot partition
part /boot --fstype ext3 --size=100 --ondisk=sda
# everything else goes to LVM
part pv.1 --size=0 --grow --ondisk=sda
volgroup VolGroup00 --pesize=32768 pv.1
logvol swap --fstype swap --name=LogVol01 --vgname=VolGroup00 --size=1024
# 5GB / fs
logvol / --fstype ext3 --name=LogVol00 --vgname=VolGroup00 --size=5120 --grow
bootloader --location=mbr --driveorder=sda


%packages
@^minimal
@core
kexec-tools
%end

%addon com_redhat_kdump --enable --reserve-mb='auto'

%end
