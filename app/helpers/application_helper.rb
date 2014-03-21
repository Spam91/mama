# encoding: utf-8
module ApplicationHelper
  def link_to_remove_field(name, d)
    d.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def fph(in_object, *in_attr)
    if in_object.blank?
      ("<span class='vstavka'>###</span>").html_safe
    else
      ("<span class='vstavka'>" + in_attr.map{|at| in_object.send(at)}.join(" ") + "</span>").html_safe
    end
  end


  def icr(name)
    if name.nil?
      return ("<span class='icr'>" + "###" + "</span>").html_safe
    elsif name == true
      return ("<span style='font: italic 100% serif'><b>" + "  ТАК  " + "</b></span>").html_safe
    elsif name == false
      return ("<span style='font: italic 100% serif'><b>" + "  НІ  " + "</b></span>").html_safe
    else
      return ("<span style='font: italic 100% serif'><b>" + name.to_s + "</b></span>").html_safe
    end
  end

  def tip_diagnoz(tip)
    case tip
      when 1
        return "При госпіталізації"
      when 2
        return "Клінічний"
      else
        return "Заключний"
    end
  end
end
