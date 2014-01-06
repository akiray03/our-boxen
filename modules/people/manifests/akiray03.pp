class people::akiray03 {
  ## osx
  # osx - Global Settings
  include osx::global::disable_autocorrect

  # osx - Dock Settings
  # include osx::dock::icon_size
  class { 'osx::dock::icon_size':  size => 32 }

  # osx - Finder Settings
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  #include osx::finder::show_hidden_files

  # osx - Universal Access
  # include osx::universal_access::cursor_size
  class { 'osx::universal_access::cursor_size': zoom => 5 }

  # osx - Miscellaneous Settings
  include osx::no_network_dsstores

  ## lib
  include java
  include wget
  include zsh
  include heroku
  include mysql
  include phantomjs
  include imagemagick
  include python

  ## local application for develop
  include iterm2::stable
  include virtualbox
  include vmware_fusion
  include pycharm
#  include omnigraffle
  include cyberduck

  include vagrant
#  vagrant::plugin { 'vagrant-vmware-fusion':
#    license => 'puppet:///modules/people/joe/licenses/fusion.lic',
#  }
#  vagrant::box { 'squeeze64/vmware_fusion':
#    source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
#  }

  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  include firefox
  include chrome

  include dropbox
  include skype
  include hipchat
  include alfred
  include mou
  include vlc
  include flux
  include cinch
  include fluid
  include istatmenus4
  include onepassword

  # via homebrew
  package {
    [
      'readline', # use for rails
      'tmux',
      'reattach-to-user-namespace', # use tmux to clipbord
      'tree',
      'proctools', # kill by process name. like $ pkill firefox       
      'tig',
      'git-extras',
      'z',
      'ec2-api-tools',
      'ec2-ami-tools',
      'lv'
    ]:
  }

}
