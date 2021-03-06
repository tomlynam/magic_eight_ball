# User inputs question

def question
	puts "Type a question to get an answer, or type QUIT to end the program"
	user_input = gets.strip
	if user_input == "QUIT"
		puts "Thanks for asking the Magic Eight Ball. Please play again!"
 		exit
 	elsif user_input == "add answers"
 		add_answers
 	elsif user_input == "print answers"
 		print_answers
 	elsif user_input == "reset answers"
 		reset_answers
 	end
end


# Computer outputs random answer
def original_answers 
	@answers = ["It is certain", 
	"It is decidedly so", 
	"Without a doubt", 
	"Yes, definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful",
	]
end


def add_answers
	user_input = gets.strip
	if @answers.include?(user_input) == true
		puts "That answer already exists, gimme something else"
		add_answers
	end
	@answers << user_input
	question
end


def print_answers
	puts @answers
	question
end


def reset_answers
	original_answers
	question
end


def answer
	puts "The Magic Eight Ball says: #{@answers.sample}"
end

original_answers

while true
	question
	answer
end