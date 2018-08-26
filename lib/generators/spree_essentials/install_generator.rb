module SpreeEssentials
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc 'Installs required migrations for spree_essentials'

      class_option :add_stylesheets, :type => :boolean, :default => true, :banner => 'Append spree_essentials to backend/all.css'
      class_option :add_javascripts, :type => :boolean, :default => true, :banner => 'Append spree_essentials to backend/all.js'

      def append_stylesheets
        return unless options[:add_stylesheets]
        gsub_file 'app/assets/stylesheets/backend/all.css', '*/', "*= require spree/backend/spree_essentials\n*/"
      end

      def append_javascripts
        return unless options[:add_javascripts]
        append_file 'app/assets/javascripts/backend/all.js', '//= require spree/backend/spree_essentials'
      end

    end
  end
end
