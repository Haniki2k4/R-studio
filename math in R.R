soluong <- c(32, 53, 12, 52, 42, 33)
ttien <- c(30, 25, 20, 15, 20, 15)
mmh <- c("NN", "LL", "NK", "WS", "CE", "HH")
thongtin <- c("So Luong", "Thanh tien")
soluong
ttien
bang <- matrix(c(soluong,ttien), nrow = 6, byrow = FALSE , dimnames = list(mmh,thongtin))
bang

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
poker_vector 
roulette_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)
 
# Check if you realized higher total gains in poker than in roulette
total_poker > total_roulette

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c(1:3)] 

# Calculate the average of the elements in poker_start
mean(poker_start)

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix2 <- star_wars_matrix

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2 )
all_wars_matrix