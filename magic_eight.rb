# User inputs question

def question
	puts "Type a question to get an answer, or type QUIT to end the program"
	user_input = gets.strip
	if user_input == "QUIT"
		puts "Thanks for asking the Magic Eight Ball. Please play again!"
 		exit
 	end
end

# Computer outputs random answer

@answers = ["It is certain", 
"It is decidedly so", 
"Without a doubt", 
"Yes, definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good Yes",
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

def answer
	puts "The Magic Eight Ball says: #{@answers.sample}"
end

while true
	question
	answer
end