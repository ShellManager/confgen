# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vm.create(name: 'c6', mac: 'ce:nt:os:06', os: 'centos', version: '6', ip: '100.100.100.99')
Vm.create(name: 'c7', mac: 'ce:nt:os:07', os: 'centos', version: '7', ip: '100.100.100.100')
Vm.create(name: 'd10', mac: 'de:bi:an:10', os: 'debian', version: 'stretch', ip: '100.100.100.110')
Vm.create(name: 'u18', mac: 'ub:un:tu:18', os: 'ubuntu', version: 'bionic', ip: '100.100.100.118', disk: "50G", status: 'pending')