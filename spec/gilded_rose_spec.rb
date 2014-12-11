require "spec_helper"

describe GildedRose do
  let (:test_items) { [Item.new("Aged Brie", 2, 0)] }

  context "#new" do
    it "loads default items if none are provided" do
      gr = GildedRose.new
      expect(gr.items.length).to eq(6)
    end

    it "uses an item if one is provided" do
      gr = GildedRose.new(test_items)
      expect(gr.items).to eq(test_items)
    end
  end

  context ".item_with_name" do
    it "can find items with names" do
      gr = GildedRose.new(test_items)
      expect(gr.item_with_name("Aged Brie").name).to eq("Aged Brie")
    end
  end

  context ".update_quality x1 functional tests" do
    before(:each) do
      @rose = GildedRose.new
      @rose.update_quality
    end

    it "handles +5 Dexterity Vest properly" do
      expect(@rose.item_with_name("+5 Dexterity Vest")).to eq(Item.new("+5 Dexterity Vest", 9, 19))
    end

    it "handles Aged Brie properly" do
      expect(@rose.item_with_name("Aged Brie")).to eq(Item.new("Aged Brie", 1, 1))
    end

    it "handles Elixir of the Mongoose properly" do
      expect(@rose.item_with_name("Elixir of the Mongoose")).to eq(Item.new("Elixir of the Mongoose", 4, 6))
    end

    it "handles Sulfuras, Hand of Ragnaros properly" do
      expect(@rose.item_with_name("Sulfuras, Hand of Ragnaros")).to eq(Item.new("Sulfuras, Hand of Ragnaros", 0, 80))
    end

    it "handles Backstage passes to a TAFKAL80ETC concer properly" do
      expect(@rose.item_with_name("Backstage passes to a TAFKAL80ETC concert")).to eq(Item.new("Backstage passes to a TAFKAL80ETC concert", 14, 21))
    end
  end
end
