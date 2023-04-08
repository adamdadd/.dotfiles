sudo su -
modprobe drm_kms_helper
echo N> /sys/module/drm_kms_helper/parameters/poll # Original setting "Y"
echo "drm_kms_helper" >> /etc/modprobe.d/local.conf
echo 'drm_kms_helper' >> /etc/modules-load.d/local.conf
echo "options drm_kms_helper poll=N" >> /etc/modprobe.d/local.conf
