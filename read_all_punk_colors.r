library('png')

colors <- list()
for (i in 0:9999) {
  punkimg <- readPNG(paste("../punk_images/cryptopunk",i,".png", sep=""));
  ii <- 0
  cols <- list()
  for (j in 1:336) {
    for (k in 1:336) {
      cols[ii] <- list(punkimg[j,k,])
      ii = ii +1
    }
  }
  colors <- unique(c(colors, unique(cols)))
  cat(i/10000, "\r")
}

df <- data.frame(colors)
write.csv(df, file="colors.csv", row.names = FALSE)
