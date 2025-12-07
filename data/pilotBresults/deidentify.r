# set wd as current file location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
# read in player.csv
df <- read.csv("./player.csv")
# delete urlParams from columnn list
df$urlParams <- NULL
df$participantIdentifier <- NULL
print(colnames(df))
# save file as deidentified_player.csv
write.csv(df, "./deidentified_player.csv", row.names = FALSE)

