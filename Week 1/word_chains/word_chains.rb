# Program Word Chains

require 'pry'

require 'ruby-dictionary'

class WordChain
	def initialize(dictionary)
  	@dictionary = dictionary
  end

  def find_chain(word_1, word_2)
  	@word_1 = word_1
  	@word_2 = word_2

  	array_word_1 = word_1.split("")
  	array_word_2 = word_2.split("")
  	
    initial_word = word_1
    new_step = ""
    array_chain = []

  	while new_step != word_2	
			new_step = ""
			counter = 0
			array_new_step = []
			
			while @dictionary.exists?(new_step) == false
				array_new_step = initial_word.split("")
				
				if array_new_step[counter] != array_word_2[counter]
					array_new_step[counter] = array_word_2[counter]
					new_step = array_new_step.join
				end
				
				counter = counter + 1

				if counter > word_2.length
					new_step = word_2
					puts "The next words have no solution:"
				end
			end
			new_step
			initial_word = new_step
			array_chain << initial_word	
		end
		puts word_1
		puts array_chain
	end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("mango", "apple")

