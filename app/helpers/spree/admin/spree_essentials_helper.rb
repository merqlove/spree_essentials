module Spree
  module Admin
    module SpreeEssentialsHelper
      def inside_contents_tab?
        @inside_contents_tab ||= !request.fullpath.scan(Regexp.new(extension_routes.join("|"))).empty?
      end

      def contents_tab
        content_tag :li, :class => inside_contents_tab? ? 'selected' : nil do
          link_to I18n.t('spree.admin.shared.contents_tab.content'), extension_routes.first
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
