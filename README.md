PainlessPartials
================

In case when we need to override some partial which may be plased in some engine-gem
it may be painfull to findout which partial are rendered in certain place.

For this purposes created gem painless_partials. It aimed to:
  :as-minimum: markup html/xml by comments with partial paths (done)
  :as-maximum: provide service for partial coping from gem into main app (50% done)
               or into some extension (site-theme and so on)

It is usefurl, for example, in development of application based on spree.

== Usage

Add gem into Gemfile

<pre>
  gem 'painless_partials'
</pre>

== Example

Just open page source in browser and find comment "<!-- TEMPLATE ... -->" placed above 
code which you want to override. For example:

<!-- TEMPLATE: /usr/local/rvm/gems/ruby-1.9.2-p0@wesc-spree-0.30/gems/spree_core-0.30.1/app/views/shared/_google_analytics.html.erb --> 

Also painless_partials gives tip about how to override partial. For example:
<!-- 
   For overriding this partial you may run from project (or engine/extension) dir:
    $ mkdir -p app/views/shared && cp /usr/local/rvm/gems/ruby-1.9.2-p0@wesc-spree-0.30/gems/spree_core-0.30.1/app/views/shared/_google_analytics.html.erb app/views/shared/_google_analytics.html.erb
   NOTE: Please make sure that it is what you want before running. In common case it is.
--> 

In common case all you need it to point project or engine/extension dir in your therminal and invoke this command.

== Inspirited by

 * https://github.com/fcheung/tattler

Also good partials helper with javascript ui: https://github.com/markevans/partial_identifier
