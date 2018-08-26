module Spree
  module Admin
    module SpreeEssentialsHelper
      def inside_contents_tab?
        @inside_contents_tab ||= !request.fullpath.scan(Regexp.new(extension_routes.join("|"))).empty?
      end

      def contents_tab
        content_tag :ul, :class => 'nav nav-sidebar' do
          main_menu_tree Spree.t('admin.shared.contents_tab.content'), icon: "pencil", sub_menu: "content", url: extension_routes.first
        end
      end

      def markdown_helper
        content_tag('em', :class => 'small markdown-helper') do
          [
              t('essentials.parsed_with'),
              link_to("Markdown", "http://daringfireball.net/projects/markdown/basics", :onclick => 'window.open(this.href); return false')
          ].join(" ").html_safe
        end
      end

      private

      def extension_routes
        @extension_routes ||= SpreeEssentials.essentials.map { |key, cls|
          route = cls.tab[:route] || "admin_#{key}"
          begin
            send("#{route}_path")
          rescue
            "##{key}"
          end
        }.push(spree.admin_uploads_path)
      end

    end
  end
end
