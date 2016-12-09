require_relative 'bottles'
require_relative 'lyrics'

describe Bottles do 
    let(:bottles) { Bottles.new(99) }
    let(:song_lyrics) { SONG_LYRICS }

    describe "#verse:" do

    	context "when more than 1 bottle of beer on the wall" do
	    	it "should return a verse for the song'" do
	    		expect(bottles.verse(98)).to eq(
					"98 bottles of beer on the wall, 98 bottles of beer.\nTake one down and pass it around, 97 bottles of beer on the wall.\n\n"
				)
	    	end
	    end

	    context "when 1 bottle of beer on the wall" do
	    	it "should return a verse for the song" do
	    		expect(bottles.verse(1)).to eq(
					"1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n\n"
				)
	    	end
	    end

	    context "when 0 bottles of beer on the wall" do
	    	it "should return a verse for the song" do
	    		expect(bottles.verse(0)).to eq(
					"No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n\n"
				)
	    	end
	    end
    end

    describe "#song" do
    	it "should generate lyrics" do
    		expect(bottles.song).to eq(song_lyrics)
    	end
    end
    
end