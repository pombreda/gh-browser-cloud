data <- c(1695, 1239, 1096, 288, 242)
labels <- c('IE', 'Chrome', 'Firefox', 'Opera', 'Safari')
table <- data.frame(data,labels)

# open a device using png() and specify taget image file
png(filename="commit-messages-web-browsers.png",
    width = 600, height = 480, units = "px", pointsize = 14
)

# vertical labels: las=2, margins: mar=c(bottom, left, top, right)
#par(las=2, mar=c(6, 6, 2, 2))
bp <- barplot(data,
    ylab="Commit Messages",
    names.arg=labels,
    col=heat.colors(nrow(table))
)
text(bp, 0, round(data, 1), cex=.8, pos=3)

# close device
dev.off()
