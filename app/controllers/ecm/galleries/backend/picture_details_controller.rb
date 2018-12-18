module Ecm
  module Galleries
    module Backend
      class PictureDetailsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting
        include ResourcesController::BatchActionsConcern
        include ResourcesController::ActsAsListConcern
        include ResourcesController::ActsAsPublishedConcern

        helper Twitter::Bootstrap::Components::Rails::V3::ComponentsHelper

        def self.resource_class
          Ecm::Galleries::PictureDetail
        end

        private

        def load_collection_scope
          super.joins(:picture_gallery).order(picture_gallery_id: :asc, position: :asc)
        end

        def after_destroy_location
          last_location
        end

        def permitted_params
          params.require(:picture_detail).permit(:title, :description, :picture_gallery_id, :published)
        end
      end
    end
  end
end
