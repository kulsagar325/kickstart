install
firstboot --enable
ignoredisk --only-use=vda
lang en_GB.UTF-8
keyboard us
timezone Australia/Melbourne
auth --useshadow --enablemd5
selinux --disabled
firewall --disabled
services --enabled=NetworkManager,sshd
eula --agreed
ignoredisk --only-use=vda
bootloader --location=mbr --append="quiet console=ttyS0,57600" --md5pass $1$5IgaX1$faRkQfBQNxXczfeoqFw/X0
skipx
#text
#cmdline
network --bootproto=dhcp --noipv6
rootpw --iscrypted $1$kAmQG99e$FbW340FCc.gNuEPcXY.Fv1
firewall --disabled
selinux --disabled
authconfig --enableshadow --enablemd5
timezone America/Los_Angeles
clearpart --all
zerombr
part /boot --fstype ext3 --size 500 --ondisk sda
part swap --recommended --ondisk sda
part pv.1 --size 15428 --ondisk sda
part pv.2 --size 3072 --grow --ondisk sda
volgroup images pv.1
volgroup datavg pv.2
logvol / --fstype ext3 --name=v1 --vgname=images --size=2560
logvol /upgrade --fstype ext3 --name=upgrade --vgname=images --size=96
logvol /log --fstype ext3 --name=log --vgname=datavg --size=2048
logvol /data --fstype ext3 --name=data --vgname=datavg --size=1024 --grow
reboot --eject

%packages --excludedocs --instLangs=en_GB.utf8:en_US.utf8

-ConsoleKit
-ConsoleKit-libs
-MAKEDEV
-acl
-acpid
-aic94xx-firmware
-alsa-lib
-alsa-utils
-at
-atk
-atmel-firmware
-attr
-audit
-audit-libs
-authconfig
-avahi-libs
-b43-fwcutter
-b43-openfwwf
-basesystem
-bash
-bc
-bfa-firmware
-bind-libs
-bind-utils
-binutils
-biosdevname
-blktrace
-bridge-utils
-btparser
-busybox
-bzip2
-bzip2-libs
-ca-certificates
-cairo
-centos-indexhtml
-centos-release
-checkpolicy
-chkconfig
-compat-libstdc++-33
-coreutils
-coreutils-libs
-cpio
-cpuspeed
-cracklib
-cracklib-dicts
-crda
-cronie
-cronie-anacron
-crontabs
-cryptsetup-luks
-cryptsetup-luks-libs
-cups-libs
-curl
-cyrus-sasl
-cyrus-sasl-lib
-cyrus-sasl-plain
-dash
-db4
-db4-utils
-dbus
-dbus-glib
-dbus-libs
-dbus-python
-desktop-file-utils
-device-mapper
-device-mapper-event
-device-mapper-event-libs
-device-mapper-libs
-dhclient
-dhcp-common
-diffutils
-dmidecode
-dmraid
-dmraid-events
-dosfstools
-dracut
-dracut-kernel
-e2fsprogs
-e2fsprogs-libs
-ed
-efibootmgr
-eggdbus
-eject
-elfutils
-elfutils-libelf
-elfutils-libs
-ethtool
-expat
-file
-file-libs
-filesystem
-findutils
-fipscheck
-fipscheck-lib
-fontconfig
-fprintd
-fprintd-pam
-freetype
-gamin
-gawk
-gdbm
-glib2
-glibc
-glibc-common
-gmp
-gnupg2
-gnutls
-gpgme
-gpm-libs
-grep
-groff
-grub
-grubby
-gtk2
-gzip
-hal
-hal-info
-hal-libs
-hdparm
-hicolor-icon-theme
-hunspell
-hunspell-en
-hwdata
-info
-iproute
-iptables
-iptables-ipv6
-iputils
-ipw2100-firmware
-ipw2200-firmware
-irqbalance
-ivtv-firmware
-iw
-iwl100-firmware
-iwl1000-firmware
-iwl3945-firmware
-iwl4965-firmware
-iwl5000-firmware
-iwl5150-firmware
-iwl6000-firmware
-iwl6000g2a-firmware
-iwl6000g2b-firmware
-iwl6050-firmware
-jasper-libs
-kbd
-kbd-misc
-kernel
-kernel-firmware
-kexec-tools
-keyutils
-keyutils-libs
-kpartx
-krb5-libs
-less
-libX11
-libX11-common
-libXau
-libXcomposite
-libXcursor
-libXdamage
-libXext
-libXfixes
-libXft
-libXi
-libXinerama
-libXrandr
-libXrender
-libacl
-libaio
-libattr
-libblkid
-libcap
-libcap-ng
-libcom_err
-libcurl
-libdrm
-libedit
-libertas-usb8388-firmware
-libevent
-libffi
-libfprint
-libgcc
-libgcrypt
-libgpg-error
-libgssglue
-libidn
-libjpeg
-libnih
-libnl
-libpcap
-libpng
-libreport
-libreport-cli
-libreport-plugin-kerneloops
-libreport-plugin-logger
-libreport-plugin-mailx
-libreport-plugin-reportuploader
-libreport-plugin-rhtsupport
-libreport-python
-libselinux
-libselinux-utils
-libsemanage
-libsepol
-libss
-libssh2
-libstdc++
-libtar
-libtasn1
-libthai
-libtiff
-libtirpc
-libudev
-libusb
-libusb1
-libuser
-libutempter
-libuuid
-libxcb
-libxml2
-libxml2-python
-libxslt
-logrotate
-lsof
-lua
-lvm2
-lvm2-libs
-m4
-mailx
-man
-man-pages
-man-pages-overrides
-mdadm
-microcode_ctl
-mingetty
-mlocate
-module-init-tools
-mtr
-mysql-libs
-nano
-ncurses
-ncurses-base
-ncurses-libs
-net-tools
-newt
-newt-python
-nfs-utils
-nfs-utils-lib
-nspr
-nss
-nss-softokn
-nss-softokn-freebl
-nss-sysinit
-nss-tools
-nss-util
-ntp
-ntpdate
-ntsysv
-openldap
-openssh
-openssh-clients
-openssh-server
-openssl
-pam
-pam_passwdqc
-pango
-parted
-passwd
-pciutils
-pciutils-libs
-pcmciautils
-pcre
-perl
-perl-Module-Pluggable
-perl-Pod-Escapes
-perl-Pod-Simple
-perl-libs
-perl-version
-pinentry
-pinfo
-pixman
-pkgconfig
-plymouth
-plymouth-core-libs
-plymouth-scripts
-pm-utils
-policycoreutils
-polkit
-popt
-postfix
-postgresql91
-postgresql91-contrib
-postgresql91-libs
-postgresql91-server
-prelink
-procps
-psacct
-psmisc
-pth
-pygpgme
-python
-python-ethtool
-python-iniparse
-python-iwlib
-python-libs
-python-pycurl
-python-urlgrabber
-ql2100-firmware
-ql2200-firmware
-ql23xx-firmware
-ql2400-firmware
-ql2500-firmware
-quota
-rdate
-readahead
-readline
-redhat-logos
-rfkill
-rng-tools
-rootfiles
-rpcbind
-rpm
-rpm-libs
-rpm-python
-rsync
-rsyslog
-rt61pci-firmware
-rt73usb-firmware
-sed
-selinux-policy
-selinux-policy-targeted
-setserial
-setup
-setuptool
-sgpio
-shadow-utils
-slang
-smartmontools
-sos
-sqlite
-strace
-sudo
-sysstat
-system-config-firewall-base
-system-config-firewall-tui
-system-config-network-tui
-systemtap-runtime
-sysvinit-tools
-tar
-tcp_wrappers
-tcp_wrappers-libs
-tcpdump
-tcping
-tcptraceroute
-tcsh
-time
-tmpwatch
-uuid
-vconfig
-vim-common
-vim-enhanced
-vim-minimal
-virt-what
-wget
-which
-wipe
-wireless-tools
-words
-xdg-utils
-xmlrpc-c
-xmlrpc-c-client
-xorg-x11-drv-ati-firmware
-xz
-xz-libs
-xz-lzma-compat
-yum
-yum-metadata-parser
-yum-plugin-fastestmirror
-yum-plugin-security
-yum-utilstraceroute
-tzdata
-udev
-unzip
-upstart
-usbutils
-usermode
-ustr
-util-linux-ng
-uuid
-vconfig
-vim-common
-vim-enhanced
-vim-minimal
-virt-what
-wget
-which
-wipe
-wireless-tools
-words
-xdg-utils
-xmlrpc-c
-xmlrpc-c-client
-xorg-x11-drv-ati-firmware
-xz
-xz-libs
-xz-lzma-compat
-yum
-yum-metadata-parser
-yum-plugin-fastestmirror
-yum-plugin-security
-yum-utils
-zd1211-firmware
-zip
-zlib

%pre 
#!/bin/bash

showallkargs()
{
awk '{split($0,kargs); for (i in kargs) print kargs[i]}' /proc/cmdline
}

getkarg()
{
   kname=$1
   noval=$2

   if [ -z "${kname}" ]; then
        return ""
   fi

   kval=`awk -v kname=${kname} -v noval=${noval} '{if (noval=="true") klen=1; else klen=length(kname)+2; split($0,kargs); for(i in kargs) if (match(kargs[i],kname)==1) print substr(kargs[i],klen)}' /proc/cmdline`
   echo ${kval}
}

install_mode=`getkarg imode`
speed=`getkarg speed`

if [ -z "$install_mode" ]; then
	install_mode="pxe"
	echo "No install mode found, assuming 'pxe'"
else
	echo "Install mode: (${install_mode}) detected"
fi

echo ""
echo "Filesystems and mounts during %pre are:"
echo ""
fsandmounts=`df`
echo ${fsandmounts}
echo ""

case $install_mode in
iso)
	;;
pxe)
	cd /tmp
	wget ftp://manta.redseal.net/appliance/rava/redseal/build_id_check.sh
	chmod +x build_id_check.sh
	/tmp/build_id_check.sh
	RES=$?
	if [ ${RES} -gt 0 ]; then
		echo " " 
		echo "Error finding the RedSeal build file(s)"
		echo " " 
		sleep 5
		init 6
		exit ${RES}
	fi
	;;
esac



%post 
#!/bin/bash

install_dir="/data/install"
mkdir -p -m 777 ${install_dir}

showallkargs()
{
awk '{split($0,kargs); for (i in kargs) print kargs[i]}' /proc/cmdline
}

getkarg()
{
   kname=$1
   noval=$2

   if [ -z "${kname}" ]; then
        return ""
   fi

   kval=`awk -v kname=${kname} -v noval=${noval} '{if (noval=="true") klen=1; else klen=length(kname)+2; split($0,kargs); for(i in kargs) if (match(kargs[i],kname)==1) print substr(kargs[i],klen)}' /proc/cmdline`
   echo ${kval}
}

getbuildprop()
{
propname=$1
awk -v propname=${propname} -F"=" '{if ($1==propname) print $2}' ${install_dir}/buildinfo.txt
}

main() {
echo "In post..."


#
# Below are various script arguments that are allowed, which are
# passed as kernel arguments from the boot prompt and the underlying
# .cfg file (pxelinux, isolinux, or other syslinux variant boot
# config/menu files).
#
# imode: The install mode.
#  Valid values are 'pxe' and 'iso'.
#  Defaults to 'pxe'.
#
# proj:  The project name.
#  Valid values are based on what's in perforce/cruisecontrol.
#  Defaults to 'main'.
#
# build: The build number.
#  Valid values are based on the build numbers for the specified project name.
#  Defaults to the symbolic name 'last_good'.
#
# machine: The type of install target.
#   Valid values are 'appliance', 'saas'.
#   Defaults to 'appliance'.
#
# dev: A valueless flag that indicates this is is a development build.
#
# notrl: A valueless flag that indicates no TRL should be installed.
#

echo "In post section, getting passed in kargs"

install_mode=`getkarg imode`
proj_id=`getkarg proj`
build_id=`getkarg build`
machine_id=`getkarg machine`
devbuild=`getkarg dev true`
notrl=`getkarg notrl true`


if [ -z "$install_mode" ]; then
	install_mode="pxe"
	echo "No install mode found, assuming 'pxe'"
else
	echo "Install mode: (${install_mode}) detected"
fi


if [ -n "${devbuild}" ]; then
	echo "Development build option detected"
else
	echo "Customer build option detected"
fi

build_id=`echo ${build_id} | awk '{print substr($0,index($0,".")+1)}'`

if [ -z "$proj_id" ]; then
	proj_id="main"
	build_dir="build.${build_id}"
else
	build_dir="build_${proj_id}.${build_id}"
fi

echo "Project build option (${proj_id}) detected"
build_home="http://seahorse.redseal.net:8090/cruisecontrol/artifacts/${proj_id}"

if [ -z "$build_id" ]; then
	echo "Build id build option (last_good) detected"
	build_dir_url="${build_home}/last_good/tars"
else
	echo "Build id build option (${build_id}) detected"
	build_dir_url="${build_home}/${build_dir}/tars"
fi

if [ -z "$machine_id" ]; then
	echo "No machine id found, assuming appliance"
	machine_id="appliance"
else
	echo "Machine id (${machine_id}) detected"
fi


#
# Copy files required for custom install outside of normal RPM path
# to the install directory on the new chrooted hardisk
#

cd ${install_dir}

#
# For the ISO, the source dir is on the CDROM or flash
# For PXE boot, these are retrieved via wget since the specific build 
# is specified on the boot kernel command line
#

case $install_mode in
iso)
	echo "In install_mode iso case section"

	cdrom_dir=/mnt/cdrom
	rs_src_dir=${cdrom_dir}/redseal
	post_rpms_dir=${cdrom_dir}/postinstall_rpms

    # TODO make this find a flash drive too

    dmesg_loc=`dmesg | grep '^[sh]d.:' | grep -i cd | head -1 | cut -d: -f1`
    cdrom_locs=(/dev/cdrom /dev/scd0 /dev/sr0 "/dev/${dmesg_loc}")
    for i in ${cdrom_locs[@]}; do
        result=`ls ${i} &> /dev/null`
        if [[ $? == 0 ]]; then
            cdrom_dev="${i}"
            break
        fi
    done

	echo "CDROM device is: ${cdrom_dev}"

	mkdir -p ${cdrom_dir}
	mount -t iso9660 -o ro ${cdrom_dev} ${cdrom_dir}

	if [ -d "${rs_src_dir}" ]; then
		echo "Found the redseal cdrom directory"
	else
		echo "ERROR - Did not find the redseal cdrom directory"
		exit 1
	fi


	cp ${rs_src_dir}/buildinfo.txt .
	cp ${rs_src_dir}/redseal_srm_appliance.tbz .
	cp ${rs_src_dir}/redseal_srm_appliance_mods.tbz .
	cp ${rs_src_dir}/postgresql*.tar.bz2 .
	cp ${post_rpms_dir}/*.rpm .
	# Copying .gz file as well. Not created a separate directory for gz files as Oracle may release .rpm for server-jre in future
	cp ${post_rpms_dir}/*.gz .

	#
	# TODO: move the tar commands from both cases to the common pathway
	# Once the current iso_postinstall and iso_postreboot scripts
	# replace the current PXE postinstall and postreboot scripts
	tar xjvf redseal_srm_appliance_mods.tbz

	#
	# TODO: remove these copy commands once the postinstall
	#	and postreboot scripts are unified back to a single
	#	script for both pxe and iso boot methods
	#
	cp ${rs_src_dir}/iso_postinstall.sh ./redseal
	cp ${rs_src_dir}/iso_postreboot.sh ./redseal


	# bug 6779
	# for longer passwords, we need the unlimited strength security policies
	cp -R ${rs_src_dir}/jce/* .

	# Each appliance model requires a custom initrd image??
	# TODO: merge all required device drivers into a single initrd image 
	cp ${rs_src_dir}/srm*_initramfs-*.img .

	umount ${cdrom_dir}


	;;
pxe)
	echo "In install_mode pxe case section"


	wget -O ${install_dir}/buildinfo.txt ${build_dir_url}/buildinfo.txt
	cangetinfo=$?

	if [ ${cangetinfo} -gt 0 ]; then
		echo "Unable to find the RedSeal buildinfo file!!  Aborting re-image."
		exit 1
	fi

	wget -O ${install_dir}/redseal_srm_appliance.tbz ${build_dir_url}/redseal_srm_appliance.tbz
	cangettar=$?

	if [ ${cangettar} -gt 0 ]; then
		echo "Unable to find the RedSeal software bzipped tar file!!  Aborting re-image."
		exit 1
	fi

	wget -O ${install_dir}/redseal_srm_appliance_mods.tbz ${build_dir_url}/redseal_srm_appliance_mods.tbz
	cangetmods=$?

	if [ ${cangetmods} -gt 0 ]; then
		echo "Unable to find the RedSeal modifications bzipped tar file!!  Aborting re-image."
		exit 1
	fi

	wget -O ${install_dir}/MegaCli-1.01.39-0.i386.rpm ${build_dir_url}/MegaCli-1.01.39-0.i386.rpm
	cangetMegaCli=$?

	if [ ${cangetMegaCli} -gt 0 ]; then
		echo "Unable to find the MegaCli rpm!!  Aborting re-image."
		exit 1
	fi

	#
	# TODO: move the tar commands from both cases to the common pathway
	# Once the current iso_postinstall and iso_postreboot scripts
	# replace the current PXE postinstall and postreboot scripts
	tar xjvf redseal_srm_appliance_mods.tbz


	# bug 6779
	# for longer passwords, we need the unlimited strength security policies
	wget --no-host-directories --cut-dirs=3 --recursive ${thirdpartyurl}/jce6/*
	cangetjce=$?

	if [ ${cangetjce} -gt 0 ]; then
		echo "Unable to find the jce jars"
		exit 1
	fi

	# Each appliance model requires a custom initrd image??
	# TODO: merge all required device drivers into a single initrd image 
	wget --retr-symlinks ${thirdpartyurl}/srm*_initrd-2.6.18-238.12.1.el5.img
	cangetcustominitrd=$?

	if [ ${cangetcustominitrd} -gt 0 ]; then
		echo "Unable to find the custom initrd image files"
		exit 1
	fi
	;;
esac



buildinfo_build_label=`getbuildprop Build-Label`
if [ -z "${build_label}" ]; then
	build_label="${buildinfo_build_label}"
fi
buildinfo_build_release=`getbuildprop Release-Label`
if [ -z "${buildinfo_build_release}" ]; then
	buildinfo_build_release="RedSeal SRM Appliance V1.0"
fi

if [ -z "${build_release}" ]; then
	build_release="${buildinfo_build_release}"
fi

if [ -z "${buildinfo_build_label}" ]; then
	echo "Unable to find the build label in the buildinfo file!!  Aborting imaging."
	exit 1
fi
#
# TODO: rename to postinstall.sh once iso and pxe install methods are unified
#
chmod +x redseal/iso_postinstall.sh
chmod +x redseal/iso_postreboot.sh


echo "--------------------------------------------------"
echo "In ks post section install_mode is: (${install_mode})"
echo "In ks post section build_release is: (${build_release})"
echo "In ks post section build_label is: (${build_label})"
echo "In ks post section proj_id is: (${proj_id})"
echo "In ks post section build_id is: (${build_id})"
echo "In ks post section machine_id is: (${machine_id})"
echo "In ks post section build_dir_url is: (${build_dir_url})"
echo "In ks post section devbuild is: (${devbuild})"
echo "In ks post section notrl is: (${notrl})"

}

#main $@ 2>&1 | tee ${install_dir}/ks_post.log
main $@ > ${install_dir}/ks_post.log 2>&1 

source redseal/iso_postinstall.sh
