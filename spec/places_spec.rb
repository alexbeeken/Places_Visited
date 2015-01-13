require('rspec')
require('places')
require('pry')

describe(Places) do
  before() do
    Places.clear()
  end
  describe(".all") do
    it("returns all the places I've been") do
      test_place = Places.new("Timbuktu")
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties our list of places") do
      test_place = Places.new("Timbuktu")
      test_place.save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves current @placename") do
      test_place = Places.new("Timbuktu")
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end
end
