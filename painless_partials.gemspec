Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'painless_partials'
  s.version     = '0.1.1'
  s.summary     = 'Markups html/xml by comments with partial paths'

  s.description = <<GEM_DESCRIPTION
[Rails 3.0+] In case when we need to override some partial which may be plased 
in some engine-gem it may be painfull to findout which partial are rendered 
in certain place. This gem aimed to help with this job. It markups html/xml 
by comments with partials paths.

It is usefurl, for example, in development of application based on spree.
GEM_DESCRIPTION

  s.required_ruby_version = '>= 1.8.7'
  # TODO: require rails 3.0+

  s.author            = 'x@ES'
  s.email             = 'KEIvanov@gmail.com'
  s.homepage          = 'https://github.com/x2es/painless_partials'

  s.files        = Dir['VERSION', 'CHANGELOG', 'README.md', 'lib/*']
  s.require_path = 'lib'
  s.requirements << 'none'
end
