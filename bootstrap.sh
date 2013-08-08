#!/usr/bin/env bash

# do this first
/vagrant/Scripts/bootstrapREHLserver.sh
/vagrant/Scripts/installREHLPackages.sh
/vagrant/Scripts/setupREHLTimeZone.sh

# if using GTM
/vagrant/Scripts/installGTM.sh
su osehra -c /vagrant/Scripts/GTM/installVistAinUserAccountForGTM.sh
su osehra -c /vagrant/Scripts/GTM/installBashConfigurationForGTM.sh

# Finish it up
su osehra -c /vagrant/Scripts/installCMakeinUserAccount.sh
su osehra -c /vagrant/Scripts/installVistAFOIARepository.sh
su osehra -c /vagrant/Scripts/installOSEHRATesting.sh
su osehra -c /vagrant/Scripts/installMUnit.sh
su osehra -c /vagrant/Scripts/installBashConfiguration.sh
