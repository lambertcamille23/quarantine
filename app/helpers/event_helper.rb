module EventHelper
  def day_name(weekday)
    days = %w[dim lun mar mer jeu ven sam]
    days[weekday].capitalize
  end
end
