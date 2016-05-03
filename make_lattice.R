library(RColorBrewer)
library(colorspace)

args = commandArgs(trailingOnly=TRUE)
pdf_file = args[1]
pdf(pdf_file, width=7.1, height=7.1)

clrs.spec <- colorRampPalette(rev(brewer.pal(11, "Spectral")))
clrs.hcl <- function(n) {
 hcl(h = seq(230, 0, length.out = n),
 c = 60, l = seq(10, 90, length.out = n),
 fixup = TRUE)
 }

pal <- function(col, border = "transparent", ...)
{
  n <- length(col)
  plot(0, 0, type="n", xlim = c(0, 1), ylim = c(0, 1),
       axes = FALSE, xlab = "", ylab = "", ...)
  rect(0:(n-1)/n, 0, 1:n/n, 1, col = col, border = border)
}

pal(rainbow(100))


pal(rainbow(clrs.spec(100)))
