#!/bin/sh

KERNEL_SEMVER=$(uname -r | cut -d+ -f1)

for i in $(echo "intel bcm rtl mtk" | sed 's/ /\n/g'); do
        echo "updating bt$i.h, https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/bluetooth/bt$i.h?h=v$KERNEL_SEMVER"
        curl -O "https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/bluetooth/bt$i.h?h=v$KERNEL_SEMVER"
	echo "updating bt$i.c, https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/bluetooth/bt$i.c?h=v$KERNEL_SEMVER"
        curl -O "https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/bluetooth/bt$i.c?h=v$KERNEL_SEMVER"
done

echo "updating btusb.c, https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/bluetooth/btusb.c?h=v$KERNEL_SEMVER"
curl -O "https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/plain/drivers/bluetooth/btusb.c?h=v$KERNEL_SEMVER"
