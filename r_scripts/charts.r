library(RColorBrewer)

#Average complexity datasets
avg_atrium_creweditor <- read.csv("H:/Desktop/csvs/avg_uft_atrium_creweditor.csv")
avg_uft_common <- read.csv("H:/Desktop/csvs/avg_uft_common.csv")
avg_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/avg_uft_jmp4_regression.csv")
avg_uft_jmp_smoke <- read.csv("H:/Desktop/csvs/avg_uft_jmp_smoke.csv")
avg_uft_jmp_birch <- read.csv("H:/Desktop/csvs/avg_uft_jmp_birch.csv")
avg_uft_smoke <- read.csv("H:/Desktop/csvs/avg_uft_smoke.csv")
avg_uft_jmp <- read.csv("H:/Desktop/csvs/avg_uft_jmp.csv")
avg_uft_mr_temp2 <- read.csv("H:/Desktop/csvs/avg_uft_mr_temp2.csv")

#Proness to change datasets
#proness_uft_common <- read.csv("H:/Desktop/csvs/proness_uft_common.csv")
#proness_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/proness_uft_jmp4_regression.csv")
#proness_uft_jmp_smoke <- read.csv("H:/Desktop/csvs/proness_uft_jmp_smoke.csv")
#proness_uft_jmp_birch <- read.csv("H:/Desktop/csvs/proness_uft_jmp_birch.csv")
#proness_uft_smoke <- read.csv("H:/Desktop/csvs/proness_uft_smoke.csv")
#proness_uft_jmp <- read.csv("H:/Desktop/csvs/proness_uft_jmp.csv")



rq1_sources <- read.csv("C:/Users/marcello.steiner/Desktop/thesis/figure_src/RQ1/RQ1_sources.csv", sep=";")


#Needed to stop the script so I can save the image :)
readkey <- function(){
  cat ("Press [enter] to continue")
  line <- readline()
}

plotLinesForProject <- function(projectName, lineData, lineNames, legendPos="bottomright"){
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
    legend(legendPos,legend=lineNames,lty=1,col=seq_along(lineData))
  }
}

#plotBarsForProject <- function(projectName, barData, barNames){
#  barplot(proness_uft_common$PRONESS, names.arg = proness_uft_common$COMPLEXITY)
#}

plotBarForSources <- function(dataset, names = NULL, legendPos = "topright"){
  chartColors <- brewer.pal(length(dataset), "Blues")
  tmp <- as.matrix(dataset[-1])
  rownames(tmp) <- dataset[, 1]
  barplot(
    t(tmp),
    col = chartColors
  )
  if(!is.null(names)){
    legend(legendPos,legend=rev(names), fill = rev(chartColors))
  }
  
}
plotBarForSources(RQ1_sources, names(RQ1_sources)[2:6] )


#bar <- list(a=proness_uft_jmp_birch$PRONESS)
#name <- list(a="Test")
#plotBarsForProject("Test", bar, name )



#Create line chart for Project A
data <- list(
  a=avg_atrium_creweditor$AVG,
  b=avg_uft_smoke$AVG
)
name <- list(
  a="Repository A1 (Regression tests)",
  b="Repostiory A2 (Integration + Smoke tests)"
  )
plotLinesForProject("Project A", data, name)
readkey()

#Create line chart for Project B
data <- list(a=avg_uft_mr_temp2$AVG)
name <- list(avg="Repository B1 (Smoke tests)")
plotLinesForProject("Project B", data, name)
readkey()

#Create line chart for project C
data <- list(
  a=avg_uft_jmp$AVG,
  b=avg_uft_jmp_birch$AVG,
  c=avg_uft_jmp4_regression$AVG,
  d=avg_uft_jmp_smoke$AVG
  )
name <- list(
  a="Repository C1 (Regression tests)",
  b="Repository C2 (Regression tests)",
  c="Repository C3 (Regression tests)",
  d="Repository C4 (Smoke tests)"
  )
plotLinesForProject("Project C", data, name,"topright")
readkey()

#Create line chart for Project D
dat <- list(a=avg_uft_common$AVG)
nam <- list(a="Repository D1 (Reusable functions)")
plotLinesForProject("Project D", dat, nam, "topright")


#Create line chart Aggregated
dat <- list(
  a=avg_atrium_creweditor$AVG,
  b=avg_uft_smoke$AVG,
  c=avg_uft_mr_temp2$AVG,
  d=avg_uft_jmp$AVG,
  e=avg_uft_jmp_birch$AVG,
  f=avg_uft_jmp4_regression$AVG,
  g=avg_uft_jmp_smoke$AVG,
  h=avg_uft_common$AVG
  )
nam <- list(
  a="A1",
  b="A2",
  c="B1",
  d="C1",
  e="C2",
  f="C3",
  g="C4",
  h="D1"
  )
plotLinesForProject("Overall complexity", dat, nam, "topright")










