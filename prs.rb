#Mark Hinschberger
# Email : markhinschberger@gmail.com
# Github: Foodaka
# Tealeaf Assignment: Rock, Paper, Scissors 

	require 'pry'
	CHOICES = {'p' => "paper", 'r' => "Rock", 's' => 'Scissors'}
	puts "Welcome to Paper, Rock, Scissors"

	def winning_message(winning_choice)
		case winning_choice
		when 'p'
			puts "paper wraps rock"
		when 'r'
			puts "rock smashed scissors"
		when 's'
			puts 'scissors cuts paper'
		end
end

	loop  do
		begin
		puts "Please chose (p, r, s)"
		player_choice=gets.chomp.downcase
	end until  CHOICES.keys.include?(player_choice)

	computer_choice = CHOICES.keys.sample

	if player_choice == computer_choice
		puts "Its a Tie!!"
	elsif player_choice == 'p' && computer_choice == 'r' || player_choice =='r' && computer_choice =='s'|| player_choice =='s' && computer_choice == 'p' 
	winning_message(player_choice)
	puts " You win, you are smarter than a computer" 
	else
		winning_message(computer_choice)
	puts 'The computer won, Go back to school fool' 
	
	end
	puts "play again? (y/n)"
	break if gets.chomp.downcase != 'y'
	puts "goodbye!"
end