class MainController < ApplicationController
  
  def index
    
  end

  def about
  end

  def contacts
  end

  def menu
   res = {}
    MenuItem.uniq.pluck(:section).each do |section_title|
      puts section_title
      section = Section.new section_title
      section.second_sections = []
      MenuItem.where(section: section_title).uniq.pluck(:second_section).each do |second_section_title|
        puts second_section_title
        second_section = SecondSection.new(second_section_title)
        second_section.items = []
        MenuItem.where('section = ? AND second_section = ?', section_title, second_section_title).each do |item|
          puts item.name
          second_section.items << item
        end
        section.second_sections << second_section
      end
      res[section.section_name] = section
    end
    @res = res
  end
    
  class SecondSection
    attr_accessor :items, :second_section_name
    def initialize(second_section_name)
      self.second_section_name = second_section_name
    end
  end

  class Section
    attr_accessor :second_sections, :section_name
    def initialize(section_name)
      self.section_name = section_name
    end
  end
    
end
