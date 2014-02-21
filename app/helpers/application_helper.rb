module ApplicationHelper
  def link_to_remove_field(name, d)
    d.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
end
