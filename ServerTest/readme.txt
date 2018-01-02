AuctionMuptipleClientTestScript
- allows test server with multiple connecting clients. We can set amount of clients throught variable "AMOUNT_OF_CLIENTS",
- script creates AMOUNT_OF_CLIENTS directories and copies client jar file (path - "SRC_JAR_FILE_PATH") to each directory,
- also script create additional script in every directory,
- after that script call each of these script in the directories.