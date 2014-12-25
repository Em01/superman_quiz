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

	def determine_grade

		Console_Screen.cls 

		if $noRight >= 3 then 

			print "You correctly answered " + $noRight.to_s + " questions(s). "
			puts "You have passed this trivia quiz!\n\n"
			puts "You earned a rank of:Good Citizen" if $noRight == 3
			puts "You earned a rank of:Side Kick" if $noRight == 4
			puts "You earned a rank of:Superhero" if $noRight == 5
			print "\n\nPress Enter to continue."

		else

			print "You missed " + (5 - $noRight).to_s + " questions. "
			puts "You have failed the trivia quiz."
			puts "retake the quiz"
			print "\n\nPress Enter to continue."

		end

		Console_Screen.pause

	end

	def display_credits

		Console_Screen.cls 
		puts "\t\tThankyou for taking the quiz"
	end

	#Main Script Logic
	$noRight = 0

	Console_Screen = Screen.new
	SQ = Quiz.new

	SQ.display_greeting

	answer = " "

	loop do 

		Console_Screen.cls
		print "Are you ready to take the quiz? (y/n): "

		answer = STDIN.gets 
		answer.chop!

		break if answer == "y" || answer == "n"
	end

	#Analyze the players input
	if answer == "n"

		Console_Screen.cls 

		puts "Okay, perhaps another time.\n\n"

	else

		SQ.display_instructions

		SQ.disp_q("What is the name of the Daily Planet's ace photographer?",
			"a. Jimmy Olsen", "b. Clark Kent", "c. Lex Luthor", "d. Louis Lane",
			"a")
 
	end