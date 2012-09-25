class Admin::BaseController < ApplicationController
  before_filter :admin_login_required
end