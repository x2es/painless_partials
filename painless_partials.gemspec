Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'painless_partials'
  s.version     = '0.0.1'
  s.summary     = 'markup html/xml by comments with partial paths'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'x@ES'
  s.email             = 'KEIvanov@gmail.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'lib/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true
end
