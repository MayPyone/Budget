module ApplicationHelper
  def icon_options
    Group::ICONS.map { |icon, label| [label, icon] }
  end
end
