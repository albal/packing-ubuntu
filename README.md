# packing-ubuntu
Packer configuration for creating an Ubuntu Tempalte for VMware vSphere

    packer build -force -var "vcenter-password=NewPassword" -var-file variables.json ubuntu18.json
