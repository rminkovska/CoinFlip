all_outcomes <- 0
desired_outcomes <-0


#c(...) forms a vector combining arguments
coin <- c("H", "T")

for(t1 in coin){
  for(t2 in coin){
    for(t3 in coin){
      for(t4 in coin){
        for(t5 in coin){
          for(t6 in coin){
            for(t7 in coin){
              for(t8 in coin){
                for(t9 in coin){
                  
                  all_outcomes <- all_outcomes + 1
                  
                  # Storing the current outcome in a vector
                  current_tosses <- c(t1, t2, t3, t4, t5, t6, t7, t8, t9)
                  
                  # The sequence count is at least 1
                  sequence_count <- 1
                  
                  # Loop through the current tosses (starting from the second)
                  for (i in 2:9){
                    
                    # A new sequence has started 
                    if (current_tosses[i] != current_tosses[i-1]){
                      sequence_count <- sequence_count + 1
                    }
                  }
                  
                  # If the current outcome has 3 sequences it's a desired outcome
                  if(sequence_count == 3){
                    desired_outcomes <- desired_outcomes + 1
                  }
                }
              }
            }
          }  
        }
      }
    }  
  }
}
# Calculating the probability
result <- desired_outcomes / all_outcomes
print(result)

