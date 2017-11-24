# puppet-iptables
Puppet task for saving and restoring iptables rules

Add to Puppetfile:

mod 'iptables',
  :git => 'https://github.com/sbertie/puppet-iptables'


Using with puppet task:

puppet task run iptables::rules action=save file=test --node servername
