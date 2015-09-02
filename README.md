# Mesos on coreos vagrant sample

## Prerequire

- [VirtualBox 5.x](https://www.virtualbox.org) - [Download](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant 1.7.x](https://www.vagrantup.com) - [Download](https://www.vagrantup.com/downloads.html)
- update publickey (vagrant/user-data.{master,slave})

## vagrant up

```
$ cd vagrant
$ vagrant up
```

## bootstrap mesos cluster

```
$ fleetctl start services/master/zookeeper@3.4.5
$ fleetctl start services/master/mesos_master@0.21.0
$ fleetctl start services/master/marathon@latest
$ fleetctl start services/slave/mesos_slave@0.21.0
```

## run registrator

```
$ fleetctl start services/slave/registrator@latest
```

### run nginx-confd

```
$ fleetctl start services/master/nginx_confd@1.9.4
```

## Web Test

- mesos 
  - http://172.17.8.100:5050
- marathon
  - http://172.17.8.100:8080

## Fleet Test

```sh
$ export FLEETCTL_TUNNEL=172.17.8.100 && ssh-add ~/.ssh/id_rsa
```

- fleetctl list-machines
- fleetctl list-units
