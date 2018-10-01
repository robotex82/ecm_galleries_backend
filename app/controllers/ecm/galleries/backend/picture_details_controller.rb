module Ecm
  module Galleries
    module Backend
      class PictureDetailsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting

        helper Twitter::Bootstrap::Components::Rails::V3::ComponentsHelper

        def self.resource_class
          Ecm::Galleries::PictureDetail
        end

        private

        def after_destroy_location
          last_location
        end

        def permitted_params
          params.require(:picture_detail).permit(:title, :description)
        end
      end
    end
  end
end
