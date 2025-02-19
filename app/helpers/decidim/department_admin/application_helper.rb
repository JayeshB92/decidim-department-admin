# frozen_string_literal: true

module Decidim
  module DepartmentAdmin
    # Custom helpers, scoped to the department_admin engine.
    #
    module ApplicationHelper
      include ::Decidim::TranslatableAttributes

      # rubocop: disable Rails/HelperInstanceVariable
      def roles_with_title(user)
        roles_with_title = user.roles.collect { |role| [role, ""] }
        # if user had particiatory processes then add role of process admin
        user_participatory_processes_filtered(user, current_locale, @search_text).each do |participatory_process|
          roles_with_title << ["process_admin", translated_attribute(participatory_process.title)]
        end
        # if user is admin then add admin role
        roles_with_title << ["admin", ""] if user.admin?
        # if user had assemblies then add role of assembly admin
        user_assemblies_filtered(user, current_locale, @search_text).each do |assembly|
          roles_with_title << ["assembly_admin", translated_attribute(assembly.title)]
        end
        roles_with_title
      end
      # rubocop: enable Rails/HelperInstanceVariable

      private

      def user_participatory_processes_filtered(user, _locale, search_text)
        query = user.participatory_processes
        query = query.where("lower(title->>?) like lower(?)", current_locale, "%#{search_text}%") if search_text.present?
        query
      end

      def user_assemblies_filtered(user, _locale, search_text)
        query = user.assemblies
        query = query.where("lower(title->>?) like lower(?)", current_locale, "%#{search_text}%") if search_text.present?
        query
      end
    end
  end
end
