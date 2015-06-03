#Average complexity datasets
avg_atrium_creweditor <- read.csv("H:/Desktop/csvs/avg_uft_atrium_creweditor.csv")
avg_uft_common <- read.csv("H:/Desktop/csvs/avg_uft_common.csv")
avg_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/avg_uft_jmp4_regression.csv")
avg_uft_jmp_smoke <- read.csv("H:/Desktop/csvs/avg_uft_jmp_smoke.csv")
avg_uft_jmp_birch <- read.csv("H:/Desktop/csvs/avg_uft_jmp_birch.csv")
avg_uft_smoke <- read.csv("H:/Desktop/csvs/avg_uft_smoke.csv")

#Proness to change datasets
proness_uft_common <- read.csv("H:/Desktop/csvs/proness_uft_common.csv")
proness_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/proness_uft_jmp4_regression.csv")
proness_uft_jmp_smoke <- read.csv("H:/Desktop/csvs/proness_uft_jmp_smoke.csv")
proness_uft_jmp_birch <- read.csv("H:/Desktop/csvs/proness_uft_jmp_birch.csv")
#proness_uft_smoke <- read.csv("H:/Desktop/csvs/proness_uft_smoke.csv")


#Needed to stop the script so I can save the image :)
readkey <- function(){
  cat ("Press [enter] to continue")
  line <- readline()
}

plotLinesForProject <- function(projectName, lineData, lineNames){
  plot(
    unlist(lineData),
    type="l",
    xlim=c(0,max(sapply(lineData,length))),
    main = projectName,
    xlab = "Revision",
    ylab = "Average cyclomatic complexity"
  )
  mapply(lines,lineData,col=seq_along(lineData),lty=1)
  if(!is.null(lineNames)){
    legend("bottomright",legend=lineNames,lty=1,col=seq_along(lineData))
  }
}

plotBarsForProject <- function(projectName, barData, barNames){
  barplot(proness_uft_common$PRONESS, names.arg = proness_uft_common$COMPLEXITY)
}

bar <- list(a=proness_uft_jmp_birch$PRONESS)
name <- list(a="Test")
plotBarsForProject("Test", bar, name )



#Create line chart for Project A
dat <- list(a=avg_atrium_creweditor$AVG)
nam <- list(avg="Compound (Smoke + Regression + Performance)")
plotLinesForProject("Project A", dat, nam)
readkey()

#Create line chart for Project D
dat <- list(a=avg_uft_common$AVG)
nam <- NULL
plotLinesForProject("Project D", dat, nam)





