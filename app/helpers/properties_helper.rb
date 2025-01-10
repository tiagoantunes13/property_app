module PropertiesHelper
  
  def prev_characteristic(current)
    chars = Property::CHARACTERISTICS.keys
    current_index = chars.index(current.to_sym)
    chars[current_index - 1] if current_index > 0
  end

  def current_step_number(characteristic)
    Property::CHARACTERISTICS.keys.index(characteristic.to_sym) + 1
  end

  def progress_percentage(characteristic)
    current = current_step_number(characteristic)
    total = Property::CHARACTERISTICS.length
    ((current.to_f / total) * 100).round
  end


  def get_characteristic_help_text(characteristic)
    {
      location: 'Rate based on proximity to key amenities (4 max)',
      interior_quality: 'Overall interior quality regardless of style (5 max)',
      materials: 'Quality of construction materials (5 max)',
      air_conditioning: 'Presence and quality of AC system (4 max)',
      heating: 'Heating system quality and coverage (4 max)',
      top_floor: 'Is it on the top floor? (4 max)',
      duplex: 'Is it a duplex unit? (3 max)',
      area: 'Quality of the neighborhood (5 max)',
      common_areas: 'Quality of shared spaces (4 max)',
      year: 'Current year = 5 points, decreases with age (4 max)',
      parking: 'Non-garage parking availability (2 max)',
      garage: 'Garage availability (3 max)',
      outdoor_areas: 'Quality of outdoor spaces (4 max)',
      condominium: 'Quality of condominium management (5 max)',
      noise: 'Sound insulation and ambient noise (5 max)',
      energy_efficiency: 'A rating = 5 points, decreases with lower ratings',
      view: 'Quality of the view (3 max)',
      modern_exterior: 'Modern exterior design (3 max)',
      modern_interior: 'Modern interior design (5 max)',
      size: '1 point per 50m² (4 max)',
      bedrooms: '1 point per bedroom (4 max)',
      balconies: 'Size and quality of balconies (4 max)',
      units_in_building: 'Fewer units = higher score (4 max)',
      floor_plan: 'Layout efficiency and flow (5 max)',
      bedroom_layout: 'Main bedrooms not sharing walls with neighbors (5 max)',
      new_construction: 'Is it newly built? (5 max)',
      central_vacuum: 'Central vacuum system (3 max)',
      ethernet: 'Ethernet connectivity (3 max)',
      modern_electrical: 'Modern electrical panel (3 max)',
      heated_towel_rails: 'Bathroom towel heaters (3 max)',
      master_bedroom: 'Master bedroom quality (5 max)',
      kitchen_island: 'Kitchen island presence and quality (3 max)',
      exterior_finish: 'Quality of exterior finishes (5 max)',
      humidity: 'Absence of humidity issues (5 max)',
      price: '220k = 5 points, increases after (8 max)',
      home_automation: 'Smart home features (5 max)',
      built_in_appliances: 'Quality of built-in appliances (3 max)',
      led_lighting: 'LED lighting installation (4 max)',
      curtain_rails: 'Hidden curtain rail installation (4 max)',
      surveillance: 'Security camera system (4 max)',
      security_door: 'Security door quality (5 max)',
      electric_blinds: 'Electric blinds installation (4 max)'
    }[characteristic]
  end
end
