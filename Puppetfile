# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.8"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.1.0"
github "gcc",         "2.0.1"
github "git",         "1.3.7"
github "go",          "1.1.0"
github "homebrew",    "1.6.0"
github "hub",         "1.3.0"
github "inifile",     "1.0.1", :repo => "puppetlabs/puppetlabs-inifile"
github "module-data", "0.0.1", :repo => "ripienaar/puppet-module-data"
github "nginx",       "1.4.3"
github "nodejs",      "3.5.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.1.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.1.6"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

## unasuke setting
# web browser
github "chrome",      "1.1.2"
github "firefox",     "1.1.8"
github "opera",       "0.3.2"

# voip
github "skype",       "1.0.8"

# memo
github "evernote",    "2.0.5"

# player
github "vlc",         "1.0.5"

# utility
github "dropbox",     "1.2.0"
guthub "virtualbox",  "1.0.11"
github "keyremap4macbook",    "1.2.2"
github "better_touch_tools",  "1.0.0"

# editor
github "sublime_text_2",      "1.1.2"
github "macvim_kaoriya",      "1.1.0",  :repo => "boxelly/puppet-macvim_kaoriya"
