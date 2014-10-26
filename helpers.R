## my function

nChar <- function(inputText) {
    nchar(inputText)
}

wordCount <- function(inputText) {
    mySplit <- strsplit(inputText, "[^a-zA-Z]+")
    length(mySplit[[1]])
}

myMedian <- function(inputText) {
    mySplit <- strsplit(inputText, "[^a-zA-Z]+")
    myMedian <- median(sapply(mySplit, nchar))
    myMedian
}

myMean <- function(inputText) {
    mySplit <- strsplit(inputText, "[^a-zA-Z]+")
    myMean <- mean(sapply(mySplit, nchar))
    myMean
}

wordRank <- function(inputText) {
    mySplit <- strsplit(inputText, "[^a-zA-Z]+")
    mySplit <- tolower(mySplit[[1]])
    aSplit <- table(mySplit)
    aSplit <- sort(aSplit, decreasing=T)
    theSplit <- aSplit[1:10]
#     theSplit <- data.frame(theSplit)
    theSplit
}