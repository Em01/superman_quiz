class Screen

	def cls 
		puts ("\n" * 25)
		puts "\a"
	end

	def pause
		STDIN.gets
	end

end

class Quiz

	def display_greeting

		Console_Screen.cls 

		print "\t\t Welcome to the Superman Movie Trivia Quiz!" +
		"\n\n\n\n\n\n\n\n\n\n\nPress Enter to " +
				"continue."

				Console_Screen.pause 

	end

	def display_instructions

		Console_Screen.cls 
		puts "INSTRUCTIONS:\n\n"

		puts "You will be oresented with some multiple choice questions"
		puts "To answer a question type the corresponding letter"
		puts "Then press the Enter key"
		puts "Your grade will be displayed at the end of the test"
		puts "Good luck!\n\n\n\n\n\n"
		print "Press Enter to continue."

		Console_Screen.pause

	end

	def disp_q(question, q_A, q_B, q_C, q_D, answer)

		loop do 

			Console_Screen.cls 

			puts question + "\n\n"
			puts q_A
			puts q_B
			puts q_C
			puts q_D
			print "\nType the letter representing your answer: "

			reply = STDIN.gets
			reply.chop!

			if answer == reply then 

				$noRight += 1
			end

			if reply == "a" or reply == "b" or reply == "c" or reply == "d" then 

				break

			end

		end

	end