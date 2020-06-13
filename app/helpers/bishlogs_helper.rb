module BishlogsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_bishlogs_path
    elsif action_name == 'edit'
      bishlog_path
    end
  end
end