require 'pry'

class Museum
  attr_reader :name,
              :exhibits,
              :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def admit(patron)
    @patrons << patron
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
          recommended_exhibits << exhibit
        end
      end
    end
    return recommended_exhibits
  end

  def patrons_by_exhibit_interest
    patrons_by_interest = {}
    @exhibits.each do |exhibit|
      patrons_by_interest[exhibit] = []
    end
    @patrons.each do |patron|
      patron.interests.each do |interest|
        if patrons_by_interest.has_key?
      end
    end
    # @exhibits.each do |exhibit|
    #   @patrons.each do |patron|
    #     if patron.interests.include?(exhibit.name) && !patrons_by_interest.has_key?(exhibit.name)
    #       patrons_by_interest[exhibit] = [patron]
    #     elsif patron.interests.include?(exhibit.name)
    #       (patrons_by_interest[exhibit]||= []) << patron
    #
    #     end
    #   end
    # end
    # return patrons_by_interest
    #   @patrons.group_by do |patron|
    #     @exhibits.each do |exhibit|
    #     recommend_exhibits(patron)
    #   end
    # end

  #   @patrons.group_by do |patron|
  #         @exhibits.each do |exhibit|
  #           patron.interests.each do |interest|
  #             interest == exhibit.name
  #           end
  #       end
  #   end
  end
end
