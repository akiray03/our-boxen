class people::akiray03
  ## osx
  # TODO

  include java
  include wget
  include zsh
  include heroku
  include mysql
  include phantomjs
  include imagemagick

  include iterm2::stable
  include virtualbox
  include vmware_fusion
  include pycharm
  include omnigraffle
  include cyberduck

  include vagrant
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => 'puppet:///modules/people/joe/licenses/fusion.lic',
  }
  vagrant::box { 'squeeze64/vmware_fusion':
    source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
  }

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
      'ec2-ami-tools'
    ]:
  }

