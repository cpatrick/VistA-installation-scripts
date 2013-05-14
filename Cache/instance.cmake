# configure the install.sh
configure_file("./install.sh.in" "./install.sh" @ONLY)
# configure the instance.sh
configure_file("./etc/init.d/cache.in" "./etc/init.d/cache" @ONLY)
