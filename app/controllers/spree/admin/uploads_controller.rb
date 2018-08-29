# frozen_string_literal: true
class Spree::Admin::UploadsController < Spree::Admin::ResourceController
  def index
    render :template => "spree/admin/uploads/#{request.xhr? ? 'picker' : 'index'}", :layout => !request.xhr?
  end

  private

  def collection
    params[:q] ||= {}
    params[:q][:s] ||= "created_at desc"
    @search = Spree::Upload.search(params[:q])
    @collection = @search.result.page(params[:page]).per(Spree::Config[:admin_orders_per_page])
  end

  def permitted_resource_params
    params[resource.object_name].present? ? params.require(resource.object_name).permit(:attachment, :alt) : ActionController::Parameters.new
  end

  def model_class
    Spree::Upload
  end
end
