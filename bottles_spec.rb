require_relative 'bottles'
require_relative 'lyrics'

describe Bottles do 
	let(:bottles) { Bottles.new(99) }
	let(:song_lyrics) { SONG_LYRICS }

	describe "#verse:" do

		context "when more than 2 bottles of beer on the wall" do
			specify "that 'bottle' should be plural based on quantity and the action is to take 'one' down" do 
				number_of_bottles = rand(3..99)
				expect(bottles.verse(number_of_bottles)).to eq(
					"#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\nTake one down and pass it around, #{ number_of_bottles - 1} bottles of beer on the wall.\n\n"
					)
			end
		end

		context "when 2 bottles of beer on the wall" do
			specify "that bottle should be plural or singular based on quantity and the action is to take 'one' down and pass it around" do 
				expect(bottles.verse(2)).to eq(
					"2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n"
					)
			end
		end

		context "when 1 bottle of beer on the wall" do
			specify "that bottle should be plural or singular based on quantity and the action is to take 'it' down and pass it around" do 
				expect(bottles.verse(1)).to eq(
					"1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n\n"
					)
			end
		end

		context "when 0 bottles of beer on the wall" do
			specify "that bottle should be plural based on quantity and the action is to go to the store and buy some more" do
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