cat /etc/sysconfig/kernel
grub2-set-default 2

awk -F\' '$1=="mennentry " {print $2}' /etc//grub2.cfg

grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-mkconfig -o /boot/efi/EFI/redhat/grub.cfg

GRUB_CMDLINE_LINUX="console=tty0 console=tty50,9600n8"
grub2-mkconfig -l /boot/grub2/grub.cfg
grub2-mkconfig -l /boot/efi/EFI/redhat/grub.cfg


exec tail -n +3 $0


grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-mkconfig -o /boot/efi/redhat/grub.cfg



