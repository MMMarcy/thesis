atrium_creweditor <- read.csv("H:/Desktop/csvs/avg_length/uft_atrium_creweditor.csv")
uft_common <- read.csv("H:/Desktop/csvs/avg_length/uft_common.csv")
uft_jmp4_regression <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp4_regression.csv")
uft_jmp_smoke <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp_smoke.csv")
uft_jmp_birch <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp_birch.csv")
uft_smoke <- read.csv("H:/Desktop/csvs/avg_length/uft_smoke.csv")
uft_jmp <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp.csv")
uft_mr_temp2 <- read.csv("H:/Desktop/csvs/avg_length/uft_mr_temp2.csv")



plotLinesForProject <- function(projectName, lineData, lineNames, legendPos="bottomright"){
  plot(
    unlist(lineData),
    type="l",
    xlim=c(0,max(sapply(lineData,length))),
    main = projectName,
    xlab = "Revision Index",
    ylab = "Average funtion length"
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
  a=atrium_creweditor$AVG,
  b=uft_smoke$AVG
)
name <- list(
  a="Rep. A1 (Regression tests)",
  b="Rep. A2 (Integration + Smoke tests)"
)
plotLinesForProject("Project A", data, name, "bottomright")
readkey()

#Create line chart for Project B
data <- list(a=uft_mr_temp2$AVG)
name <- list(avg="Rep. B1 (Smoke tests)")
plotLinesForProject("Project B", data, name, "topright")
readkey()

#Create line chart for project C
data <- list(
  a=uft_jmp$AVG,
  b=uft_jmp_birch$AVG,
  c=uft_jmp4_regression$AVG,
  d=uft_jmp_smoke$AVG
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
dat <- list(a=uft_common$AVG)
nam <- list(a="Rep. D1 (Reusable functions)")
plotLinesForProject("Project D", dat, nam, "topright")