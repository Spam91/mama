module ApplicationHelper
  def link_to_remove_field(name, d)
    d.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def fph(input)

      ("<span class='vstavka'>" + input.to_s + "</span>").html_safe

  end

  def icr(name)
    if name.blank?
      return ("<span class='icr'>" + "###" + "</span>").html_safe
    else
      return name
    end
  end
end
