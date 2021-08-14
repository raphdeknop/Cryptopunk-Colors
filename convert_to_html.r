df <- read.csv('colors.csv');

html.r <- as.hexmode(as.integer(df$R*255))
html.g <- as.hexmode(as.integer(df$G*255))
html.b <- as.hexmode(as.integer(df$B*255))

df$HTML <- paste(html.r, html.g, html.b, sep="");

write.csv(df, file="colors.csv", row.names=FALSE)