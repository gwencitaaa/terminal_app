class FlavourType
    # allow these attributes to be read for each instance
    attr_reader :category_name, :cuisines

    def initialize(category_name, cuisines)
        @category_name = category_name
        @cuisines = cuisines
    end
end

hot_spicy = FlavourType.new('Hot & Spicy', ['Indian', 'Chinese'])
creamy_rich = FlavourType.new('Creamy & Rich', ['Indian', 'Chinese'])
mild_fresh = FlavourType.new('Mild & Fresh', ['Indian', 'Chinese'])
