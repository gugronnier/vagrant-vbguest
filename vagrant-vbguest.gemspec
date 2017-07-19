# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vagrant-vbguest/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "vagrant-vbguest"
  s.version     = VagrantVbguest::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Guillaume GRONNIER"]
  s.email       = ["gglyon769@gmail.com"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/gugronnier/vagrant-vbguest-modify"
  s.summary     = %q{A Vagrant plugin to install the VirtualBoxAdditions into the guest VM}
  s.description = %q{A Vagrant plugin which automatically installs the host's VirtualBox Guest Additions on the guest system.}

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "micromachine", "~> 2.0.0"

  # those should be satisfied by vagrant
  s.add_dependency "i18n"
  s.add_dependency "log4r"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|testdrive)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

end
