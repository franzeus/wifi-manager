# -*- encoding: utf-8 -*-
# stub: net-ssh-telnet 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "net-ssh-telnet"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matthew Kent"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDMjCCAhqgAwIBAgIBADANBgkqhkiG9w0BAQUFADA/MQ4wDAYDVQQDDAVta2Vu\ndDEYMBYGCgmSJomT8ixkARkWCG1hZ29henVsMRMwEQYKCZImiZPyLGQBGRYDY29t\nMB4XDTA4MDcyODA0NTIzMVoXDTA5MDcyODA0NTIzMVowPzEOMAwGA1UEAwwFbWtl\nbnQxGDAWBgoJkiaJk/IsZAEZFghtYWdvYXp1bDETMBEGCgmSJomT8ixkARkWA2Nv\nbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK9kASXLzL37znIcJoWH\nlE6LYK9Drf9/tTP0aMJBRwzFAL6NP4KCDTSbzRcurb2gqJI5Hz7wJBm7QQaw7jnx\nF+wUWEUnXF9v8BIpruFpIM+VHIMaj4h5ifSOh7lOARCn0tBHYYadxlyHhj+cROCf\nh8SPXUQ7Otsba/8tIjYZTh+tiru7hZApAXZRZOiGPjARwuqvcWYYstbxWOyG5hAB\nQHdhJD1nv03uHuCR0S/FpLmDM+REEh2PAXbvJIMkBJJ+2KP+7oWwU95/pclnEXE/\ne0qKZkVsaszihkvh1loxlKhU/sV0Sjo+LJ/fM7SR1a9WzSw1c1C/5Twjmq6jnaLG\nZGECAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFGhf\n2WxIO89iFR2KfqyyXeWlUsBMMA0GCSqGSIb3DQEBBQUAA4IBAQAyvET0KFjr4Ars\nHvOFhZOer5jWTfGDUcKB8oOfLhbs7PANVNv0BARxgH0Dj95kTcIfSvQLWfv5OmqC\nAT3P6hPV6WbRCJOGPy0jeZcKWgPepl8vqnBciqzB8beBXmYmEe097MNvnlZptqU5\nIf5GWrjlRoeYpRDNpMpaN4UFxsb/I4MGYvbnrEVc6Ev1ztgK5Kci8oYcINjUhCls\nEOmi6kiwQNdHUW0XLqwGanEip196lyE5IHRylQ5UiwYI0T4hDSc9f0SE+dzENdFw\ndoMOs6odERAAmX+M7PQ4i3Zvs+Jv9SazZBcl8+sohZL3I5A1fkNQXts1hV6TObce\nT6VhSPds\n-----END CERTIFICATE-----\n"]
  s.date = "2009-03-15"
  s.description = "A ruby module to provide a simple send/expect interface over SSH with an API almost identical to Net::Telnet. Ideally it should be a drop in replacement.  Please see Net::Telnet for main documentation (included with ruby stdlib)."
  s.email = ["matt@bravenet.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "Todo.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Todo.txt"]
  s.homepage = "http://net-ssh-telnet.rubyforge.org"
  s.rdoc_options = ["--main", "README.txt"]
  s.rubyforge_project = "net-ssh-telnet"
  s.rubygems_version = "2.2.2"
  s.summary = "A ruby module to provide a simple send/expect interface over SSH with an API almost identical to Net::Telnet"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>, [">= 2.0.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<net-ssh>, [">= 2.0.1"])
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 2.0.1"])
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
