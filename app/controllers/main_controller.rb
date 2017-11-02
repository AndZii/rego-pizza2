class MainController < ApplicationController
 
  before_action :prepare_menu_items, only: [:menu_edit, :menu]
    
  def index
  end

  def about
  end

  def contacts
  end

  def menu_edit
  end    
      
  def menu
  end
  
  def new_menu_item
     @menu_item = MenuItem.new 
     @menu_item.section = params[:section_name]
     @second_section_collection = prepare_second_section(@menu_item.section) 
  end      
    
  def edit_menu_item 
    if(!params[:id].nil?)  
       @menu_item = MenuItem.find(params[:id])
       @second_section_collection = prepare_second_section(@menu_item.section)
    end    
  end       

        
  def create_menu_item
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      flash[:success] = "Menu item has been created"
      redirect_to menu_edit_path 
    else
      render 'new_menu_item'
    end
  end    
  
  def update_menu_item
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update_attributes(menu_item_params)
      redirect_to menu_edit_path
    else
      render 'edit_menu_item'
    end
  end    
    
  ## 
  private   
    
  def prepare_second_section(section)
      res = MenuItem.where(:section => section).uniq.pluck(:second_section)
      if(res.nil? || res.empty? || res[0] == "")
         res = [] 
      end      
      res
  end      
    
  def menu_item_params
      params.require(:menu_item).permit(:name, :price, :description, :extras, :section, :second_section)
  end    
    
  def prepare_menu_items
    menu = {}
    MenuItem.uniq.pluck(:section).each do |section_title|
      section = Section.new section_title
      section.second_sections = []
      MenuItem.where(section: section_title).uniq.pluck(:second_section).each do |second_section_title|
        second_section = SecondSection.new(second_section_title)
        second_section.items = []
        MenuItem.where('section = ? AND second_section = ?', section_title, second_section_title).each do |item|
          second_section.items << item
        end
        section.second_sections << second_section
      end
      menu[section.section_name] = section
    end
    @menu = menu
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
