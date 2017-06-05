library(stringr)

meh <- readClipboard() %>%
  str_split(" ") %>% 
  unlist()

meh.neprazni <- meh[meh != ""]
  
meh.neprazni %>% 
  str_c(collapse = " + ") %>% 
  writeClipboard()

# meh <- readClipboard() %>%
#   str_split(" ")
# 
# meh[[1]] %>% 
#   str_c(collapse = " + ") %>% 
#   writeClipboard()
