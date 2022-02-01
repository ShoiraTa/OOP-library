# frozen_string_literal: true

# Corrector class
class Corrector
  def correct_name(name)
    name = name.downcase.capitalize
    name = name.slice(0, 10) if name.length > 10
    name
  end
end
