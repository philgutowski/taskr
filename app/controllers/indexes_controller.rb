class IndexesController < ApplicationController
  skip_before_action :require_login, only: [:show]
  layout 'index'
  def show

  end
end
