atrium_creweditor <- read.csv("H:/Desktop/csvs/statements/uft_atrium_creweditor.csv")
uft_common <- read.csv("H:/Desktop/csvs/statements/uft_common.csv")
uft_jmp4_regression <- read.csv("H:/Desktop/csvs/statements/uft_jmp4_regression.csv")
uft_jmp_smoke <- read.csv("H:/Desktop/csvs/statements/uft_jmp_smoke.csv")
uft_jmp_birch <- read.csv("H:/Desktop/csvs/statements/uft_jmp_birch.csv")
uft_smoke <- read.csv("H:/Desktop/csvs/statements/uft_smoke.csv")
uft_jmp <- read.csv("H:/Desktop/csvs/statements/uft_jmp.csv")
uft_mr_temp2 <- read.csv("H:/Desktop/csvs/statements/uft_mr_temp2.csv")



plotLinesForProject <- function(projectName, lineData, lineNames, legendPos="bottomright"){
  plot(
    unlist(lineData),
    type="l",
    xlim=c(0,max(sapply(lineData,length))),
    main = projectName,
    xlab = "Revision Index",
    ylab = "% of complex statements"
  )
  mapply(lines,lineData,col=seq_along(lineData),lty=1)
  if(!is.null(lineNames)){
    legend(
      legendPos,
      legend=lineNames,
      lty=1,
      col=seq_along(lineData),
      cex = 0.6
      )
  }
}

#Create line chart for Project A
data <- list(
  a=atrium_creweditor$PERCENTAGE,
  b=uft_smoke$PERCENTAGE
)
name <- list(
  a="Rep. A1 (Regression tests)",
  b="Rep. A2 (Integration + Smoke tests)"
  )
plotLinesForProject("Project A", data, name, "topright")
readkey()

#Create line chart for Project B
data <- list(a=uft_mr_temp2$PERCENTAGE)
name <- list(avg="Rep. B1 (Smoke tests)")
plotLinesForProject("Project B", data, name, "topright")
readkey()

#Create line chart for project C
data <- list(
  a=uft_jmp$PERCENTAGE,
  b=uft_jmp_birch$PERCENTAGE,
  c=uft_jmp4_regression$PERCENTAGE,
  d=uft_jmp_smoke$PERCENTAGE
  )
name <- list(
  a="Rep. C1 (Regression tests)",
  b="Rep. C2 (Regression tests)",
  c="Rep. C3 (Regression tests)",
  d="Rep. C4 (Smoke tests)"
  )
plotLinesForProject("Project C", data, name)
readkey()

#Create line chart for Project D
dat <- list(a=uft_common$PERCENTAGE)
nam <- list(a="Rep. D1 (Reusable functions)")
plotLinesForProject("Project D", dat, nam, "topright")