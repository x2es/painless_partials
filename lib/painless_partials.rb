#
# TODO:test for ajax case
#
class ActionView::Template
  def render_with_map_wrap(*args, &block)
    part_html = render_without_map_wrap(*args, &block)
    res = if mime_type.nil? || mime_type === [Mime::HTML, Mime::XML]
      template_file = Pathname.new(self.inspect)

      # show internal paths relative from Rails.root
      if template_file.to_s =~ /#{Rails.root.parent}.*/  
      # "parent" used for showing as relative extensions placed on same level with main app
        template_file = template_file.relative_path_from Rails.root
      else
        #debugger
        if template_file.to_s =~ /\/app\/views\/(.*)/
          resource_path, resource_name = Pathname.new($1).split
        end
      end

      wrapped = []
      wrapped << "<!-- TEMPLATE: #{template_file} -->"
      # TODO: make this by ajax call
      if resource_name
        wrapped << <<OVERRIDE_TIP
<!-- 
   For overriding this partial you may run from project (or engine/extension) dir:
    $ mkdir -p app/views/#{resource_path} && cp -i #{template_file} app/views/#{resource_path}/#{resource_name}
   NOTE: Please make sure that it is what you want before running. In common case it is.
-->
OVERRIDE_TIP
      end
      wrapped << part_html
      wrapped << "<!-- END TEMPLATE: #{template_file} -->"
      wrapped.join("\n");
    else
      part_html
    end
    res.html_safe
  end
  alias_method_chain :render, :map_wrap
end
