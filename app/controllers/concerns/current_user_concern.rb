module CurrentUserConcern
  extend ActiveSupport::Concern
  def current_user
    super || OpenStruct.new(name:"Guest User", first_name: "Guest", last_name: "User", email: "gust@exapmle.com")
  end
end
