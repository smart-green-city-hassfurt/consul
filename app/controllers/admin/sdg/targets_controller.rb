class Admin::SDG::TargetsController < Admin::BaseController
  Target = ::SDG::Target

  def index
    @targets = Target.all.sort
  end
end
