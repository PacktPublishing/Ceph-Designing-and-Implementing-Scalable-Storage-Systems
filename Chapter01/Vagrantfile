Vagrant.require_version ">= 1.4.3"
VAGRANTFILE_API_VERSION = "2"

BOX='centos7-standard'
BOX_URL='https://www.dropbox.com/s/hiarmp3cdzjy94o/centos7-standard.box?dl=1'

BOX_OPENSTACK='openstack'
BOX_URL_OPENSTACK='https://www.dropbox.com/s/azww4ud3ti910os/openstack.box?dl=1'

ceph_node1= 'ceph-node1'
ceph_node1_disk2 = './ceph-node1/ceph-node1_disk2.vdi'
ceph_node1_disk3 = './ceph-node1/ceph-node1_disk3.vdi'
ceph_node1_disk4 = './ceph-node1/ceph-node1_disk4.vdi'

ceph_node2= 'ceph-node2'
ceph_node2_disk2 = './ceph-node2/ceph-node2_disk2.vdi'
ceph_node2_disk3 = './ceph-node2/ceph-node2_disk3.vdi'
ceph_node2_disk4 = './ceph-node2/ceph-node2_disk4.vdi'

ceph_node3= 'ceph-node3'
ceph_node3_disk2 = './ceph-node3/ceph-node3_disk2.vdi'
ceph_node3_disk3 = './ceph-node3/ceph-node3_disk3.vdi'
ceph_node3_disk4 = './ceph-node3/ceph-node3_disk4.vdi'

ceph_node4= 'ceph-node4'
ceph_node4_disk2 = './ceph-node4/ceph-node4_disk2.vdi'
ceph_node4_disk3 = './ceph-node4/ceph-node4_disk3.vdi'
ceph_node4_disk4 = './ceph-node4/ceph-node4_disk4.vdi'

ceph_node5= 'ceph-node5'
ceph_node5_disk2 = './ceph-node5/ceph-node5_disk2.vdi'
ceph_node5_disk3 = './ceph-node5/ceph-node5_disk3.vdi'
ceph_node5_disk4 = './ceph-node5/ceph-node5_disk4.vdi'

ceph_node6= 'ceph-node6'
ceph_node6_disk2 = './ceph-node6/ceph-node6_disk2.vdi'
ceph_node6_disk3 = './ceph-node6/ceph-node6_disk3.vdi'
ceph_node6_disk4 = './ceph-node6/ceph-node6_disk4.vdi'

ceph_node7= 'ceph-node7'
ceph_node7_disk2 = './ceph-node7/ceph-node7_disk2.vdi'
ceph_node7_disk3 = './ceph-node7/ceph-node7_disk3.vdi'
ceph_node7_disk4 = './ceph-node7/ceph-node7_disk4.vdi'

ceph_node8= 'ceph-node8'
ceph_node8_disk2 = './ceph-node8/ceph-node8_disk2.vdi'
ceph_node8_disk3 = './ceph-node8/ceph-node8_disk3.vdi'
ceph_node8_disk4 = './ceph-node8/ceph-node8_disk4.vdi'

os_host= 'os-node1'
client_host= 'client-node1'

rgw_node1_hostname= 'rgw-node1.cephcookbook.com'
rgw_node1_machine_name= 'rgw-node1'

us_east_rgw_hostname= 'us-east-1.cephcookbook.com'
us_east_rgw_machine_name= 'us-east-1'

us_west_rgw_hostname= 'us-west-1.cephcookbook.com'
us_west_rgw_machine_name= 'us-west-1'

oc_hostname= 'owncloud.cephcookbook.com'
oc_name= 'owncloud'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

##################################### Configuration for ceph-node1 #####################################################

                 config.vm.define :"ceph-node1" do |node1|
                        node1.vm.box = BOX
                        node1.vm.box_url = BOX_URL
                        node1.vm.network :private_network, ip: "192.168.1.101"
                        node1.vm.hostname = ceph_node1
                        node1.vm.synced_folder ".", "/vagrant", disabled: true
			node1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node1.vm.provision "shell", path: "post-deploy.sh" ,run: "always"
                        node1.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "1300"]
                                v.name = ceph_node1
				v.gui = true

                                unless File.exist?(ceph_node1_disk2)
                                v.customize ['createhd', '--filename', ceph_node1_disk2, '--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk2]
                                end

                                unless File.exist?(ceph_node1_disk3)
                                v.customize ['createhd', '--filename', ceph_node1_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk3]
                                end

                                unless File.exist?(ceph_node1_disk4)
                                v.customize ['createhd', '--filename', ceph_node1_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk4]
                                end

                        end

                end

##################################### Configuration for ceph-node2 #####################################################

 		config.vm.define :"ceph-node2" do |node2|
                        node2.vm.box = BOX
                        node2.vm.box_url = BOX_URL
                        node2.vm.network :private_network, ip: "192.168.1.102"
                        node2.vm.hostname = ceph_node2
                        node2.vm.synced_folder ".", "/vagrant", disabled: true
			node2.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node2.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node2.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "1024"]
                                v.name = ceph_node2
				v.gui = true

                                unless File.exist?(ceph_node2_disk2)
                                v.customize ['createhd', '--filename', ceph_node2_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk2]
                                end

                                unless File.exist?(ceph_node2_disk3)
                                v.customize ['createhd', '--filename', ceph_node2_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk3]
                                end

                                unless File.exist?(ceph_node2_disk4)
                                v.customize ['createhd', '--filename', ceph_node2_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk4]
                                end

                        end

                end

##################################### Configuration for ceph-node3 #####################################################

                config.vm.define :"ceph-node3" do |node3|
                        node3.vm.box = BOX
                        node3.vm.box_url = BOX_URL
                        node3.vm.network :private_network, ip: "192.168.1.103"
                        node3.vm.hostname = ceph_node3
                        node3.vm.synced_folder ".", "/vagrant", disabled: true
			node3.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node3.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node3.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "1024"]
                                v.name = ceph_node3
                                v.gui = true

                                unless File.exist?(ceph_node3_disk2)
                                v.customize ['createhd', '--filename', ceph_node3_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk2]
                                end

                                unless File.exist?(ceph_node3_disk3)
                                v.customize ['createhd', '--filename', ceph_node3_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk3]
                                end

                                unless File.exist?(ceph_node3_disk4)
                                v.customize ['createhd', '--filename', ceph_node3_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk4]
                                end

                        end

                end

##################################### Configuration for ceph-node4 #####################################################

                config.vm.define :"ceph-node4" do |node4|
                        node4.vm.box = BOX
                        node4.vm.box_url = BOX_URL
                        node4.vm.network :private_network, ip: "192.168.1.104"
                        node4.vm.hostname = ceph_node4
                        node4.vm.synced_folder ".", "/vagrant", disabled: true
                        node4.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node4.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node4.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "750"]
                                v.name = ceph_node4
                                v.gui = true

                                unless File.exist?(ceph_node4_disk2)
                                v.customize ['createhd', '--filename', ceph_node4_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node4_disk2]
                                end

                                unless File.exist?(ceph_node4_disk3)
                                v.customize ['createhd', '--filename', ceph_node4_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node4_disk3]
                                end

                                unless File.exist?(ceph_node4_disk4)
                                v.customize ['createhd', '--filename', ceph_node4_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node4_disk4]
                                end

                        end

                end
	
##################################### Configuration for ceph-node5 #####################################################

                config.vm.define :"ceph-node5" do |node5|
                        node5.vm.box = BOX
                        node5.vm.box_url = BOX_URL
                        node5.vm.network :private_network, ip: "192.168.1.115"
                        node5.vm.hostname = ceph_node5
                        node5.vm.synced_folder ".", "/vagrant", disabled: true
                        node5.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node5.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node5.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "750"]
                                v.name = ceph_node5
                                v.gui = true

                                unless File.exist?(ceph_node5_disk2)
                                v.customize ['createhd', '--filename', ceph_node5_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node5_disk2]
                                end

                                unless File.exist?(ceph_node5_disk3)
                                v.customize ['createhd', '--filename', ceph_node5_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node5_disk3]
                                end

                                unless File.exist?(ceph_node5_disk4)
                                v.customize ['createhd', '--filename', ceph_node5_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node5_disk4]
                                end

                        end

                end

##################################### Configuration for ceph-node6 #####################################################

                config.vm.define :"ceph-node6" do |node6|
                        node6.vm.box = BOX
                        node6.vm.box_url = BOX_URL
                        node6.vm.network :private_network, ip: "192.168.1.116"
                        node6.vm.hostname = ceph_node6
                        node6.vm.synced_folder ".", "/vagrant", disabled: true
                        node6.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node6.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node6.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "750"]
                                v.name = ceph_node6
                                v.gui = true

                                unless File.exist?(ceph_node6_disk2)
                                v.customize ['createhd', '--filename', ceph_node6_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node6_disk2]
                                end

                                unless File.exist?(ceph_node6_disk3)
                                v.customize ['createhd', '--filename', ceph_node6_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node6_disk3]
                                end

                                unless File.exist?(ceph_node6_disk4)
                                v.customize ['createhd', '--filename', ceph_node6_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node6_disk4]
                                end

                        end

                end

##################################### Configuration for ceph-node7 #####################################################

                config.vm.define :"ceph-node7" do |node7|
                        node7.vm.box = BOX
                        node7.vm.box_url = BOX_URL
                        node7.vm.network :private_network, ip: "192.168.1.117"
                        node7.vm.hostname = ceph_node7
                        node7.vm.synced_folder ".", "/vagrant", disabled: true
                        node7.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node7.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node7.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "750"]
                                v.name = ceph_node7
                                v.gui = true

                                unless File.exist?(ceph_node7_disk2)
                                v.customize ['createhd', '--filename', ceph_node7_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node7_disk2]
                                end

                                unless File.exist?(ceph_node7_disk3)
                                v.customize ['createhd', '--filename', ceph_node7_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node7_disk3]
                                end

                                unless File.exist?(ceph_node7_disk4)
                                v.customize ['createhd', '--filename', ceph_node7_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node7_disk4]
                                end

                        end

                end

##################################### Configuration for ceph-node8 #####################################################

                config.vm.define :"ceph-node8" do |node8|
                        node8.vm.box = BOX
                        node8.vm.box_url = BOX_URL
                        node8.vm.network :private_network, ip: "192.168.1.118"
                        node8.vm.hostname = ceph_node8
                        node8.vm.synced_folder ".", "/vagrant", disabled: true
                        node8.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        node8.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        node8.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "750"]
                                v.name = ceph_node8
                                v.gui = true

                                unless File.exist?(ceph_node8_disk2)
                                v.customize ['createhd', '--filename', ceph_node8_disk2,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node8_disk2]
                                end

                                unless File.exist?(ceph_node8_disk3)
                                v.customize ['createhd', '--filename', ceph_node8_disk3,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node8_disk3]
                                end

                                unless File.exist?(ceph_node8_disk4)
                                v.customize ['createhd', '--filename', ceph_node8_disk4,'--size', 1 * 20480]
                                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node8_disk4]
                                end

                        end

                end

##################################### Configuration for OpenStack node #####################################################

                 config.vm.define :"openstack-node1" do |os|
                        os.vm.box = BOX_OPENSTACK
                        os.vm.box_url = BOX_URL_OPENSTACK
                        os.vm.network :private_network, ip: "192.168.1.111"
                        os.vm.hostname = os_host
                        os.vm.synced_folder ".", "/vagrant", disabled: true
			os.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        os.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        os.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "4096"]
                                v.name = os_host
                                v.gui = true

                        end
                  end

##################################### Configuration for client node #####################################################

                 config.vm.define :"client-node1" do |os|
                        os.vm.box = BOX
                        os.vm.box_url = BOX_URL
                        os.vm.network :private_network, ip: "192.168.1.110"
                        os.vm.hostname = client_host
                        os.vm.synced_folder ".", "/vagrant", disabled: true
			os.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
			os.vm.provision "shell", path: "post-deploy.sh"
                        os.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "512"]
                                v.name = client_host
                                v.gui = true

                        end
                  end

##################################### Configuration for rgw-node1 #####################################################

                 config.vm.define :"rgw-node1" do |rgw|
                        rgw.vm.box = BOX
                        rgw.vm.box_url = BOX_URL
                        rgw.vm.network :private_network, ip: "192.168.1.106"
                        rgw.vm.hostname = rgw_node1_hostname
                        rgw.vm.synced_folder ".", "/vagrant", disabled: true
                        rgw.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        rgw.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        rgw.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "512"]
                                v.name = rgw_node1_machine_name
                                v.gui = true

                        end
                  end

##################################### Configuration for us-east-1 Rados Gateway Node #######################################

                 config.vm.define :"us-east-1" do |use1|
                        use1.vm.box = BOX
                        use1.vm.box_url = BOX_URL
                        use1.vm.network :private_network, ip: "192.168.1.107"
                        use1.vm.hostname = us_east_rgw_hostname 
                        use1.vm.synced_folder ".", "/vagrant", disabled: true
                        use1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        use1.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        use1.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "512"]
                                v.name = us_east_rgw_machine_name 
                                v.gui = true

                        end
                  end

##################################### Configuration for us-west-1 Rados Gateway Node #######################################

                 config.vm.define :"us-west-1" do |usw1|
                        usw1.vm.box = BOX
                        usw1.vm.box_url = BOX_URL
                        usw1.vm.network :private_network, ip: "192.168.1.108"
                        usw1.vm.hostname = us_west_rgw_hostname
                        usw1.vm.synced_folder ".", "/vagrant", disabled: true
                        usw1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        usw1.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        usw1.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "512"]
                                v.name = us_west_rgw_machine_name
                                v.gui = true

                        end
                  end

##################################### Configuration for owncloud Node #######################################

                 config.vm.define :"owncloud" do |oc|
                        oc.vm.box = BOX
                        oc.vm.box_url = BOX_URL
                        oc.vm.network :private_network, ip: "192.168.1.120"
                        oc.vm.hostname = oc_hostname
                        oc.vm.synced_folder ".", "/vagrant", disabled: true
                        oc.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
                        oc.vm.provision "shell", path: "post-deploy.sh",run: "always"
                        oc.vm.provider "virtualbox" do |v|

                                v.customize ["modifyvm", :id, "--memory", "512"]
                                v.name = oc_name
                                v.gui = true

                        end
                  end
###############################################################################################################
end
