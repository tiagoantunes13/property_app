class Property < ApplicationRecord
  CHARACTERISTICS = {
    location: 4,
    interior_quality: 5,
    materials: 5,
    air_conditioning: 4,
    heating: 4,
    top_floor: 4,
    duplex: 3,
    area: 5,
    common_areas: 4,
    year: 4,
    parking: 2,
    garage: 3,
    outdoor_areas: 4,
    condominium: 5,
    noise: 5,
    energy_efficiency: 5,
    view: 3,
    modern_exterior: 3,
    modern_interior: 5,
    size: 4,
    bedrooms: 4,
    balconies: 4,
    units_in_building: 4,
    floor_plan: 5,
    bedroom_layout: 5,
    new_construction: 5,
    central_vacuum: 3,
    ethernet: 3,
    modern_electrical: 3,
    heated_towel_rails: 3,
    master_bedroom: 5,
    kitchen_island: 3,
    exterior_finish: 5,
    humidity: 5,
    price: 8,
    home_automation: 5,
    built_in_appliances: 3,
    led_lighting: 4,
    curtain_rails: 4,
    surveillance: 4,
    security_door: 5,
    electric_blinds: 4
  }.freeze

  def calculate_total_score
    total_points = 0
    total_possible = 0

    CHARACTERISTICS.each do |characteristic, max_score|
      score = send(characteristic) || 0
      total_points += score
      total_possible += max_score
    end

    update(total_score: (total_points.to_f / total_possible * 100).round(2))
  end
end
