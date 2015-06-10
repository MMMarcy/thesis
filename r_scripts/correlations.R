avg_length_atrium_creweditor <- read.csv("H:/Desktop/csvs/avg_length/uft_atrium_creweditor.csv")
avg_length_uft_common <- read.csv("H:/Desktop/csvs/avg_length/uft_common.csv")
avg_length_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp4_regression.csv")
avg_length_havg_lengthuft_jmp_smoke <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp_smoke.csv")
avg_length_uft_jmp_birch <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp_birch.csv")
avg_length_uft_smoke <- read.csv("H:/Desktop/csvs/avg_length/uft_smoke.csv")
avg_length_uft_jmp <- read.csv("H:/Desktop/csvs/avg_length/uft_jmp.csv")
avg_length_uft_mr_temp2 <- read.csv("H:/Desktop/csvs/avg_length/uft_mr_temp2.csv")


statement_comp_atrium_creweditor <- read.csv("H:/Desktop/csvs/statements/uft_atrium_creweditor.csv")
statement_comp_uft_common <- read.csv("H:/Desktop/csvs/statements/uft_common.csv")
statement_comp_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/statements/uft_jmp4_regression.csv")
statement_comp_uft_jmp_smoke <- read.csv("H:/Desktop/csvs/statements/uft_jmp_smoke.csv")
statement_comp_uft_jmp_birch <- read.csv("H:/Desktop/csvs/statements/uft_jmp_birch.csv")
statement_comp_uft_smoke <- read.csv("H:/Desktop/csvs/statements/uft_smoke.csv")
statement_comp_uft_jmp <- read.csv("H:/Desktop/csvs/statements/uft_jmp.csv")
statement_comp_uft_mr_temp2 <- read.csv("H:/Desktop/csvs/statements/uft_mr_temp2.csv")


avg_complexity_atrium_creweditor <- read.csv("H:/Desktop/csvs/avg_uft_atrium_creweditor.csv")
avg_complexity_uft_common <- read.csv("H:/Desktop/csvs/avg_uft_common.csv")
avg_complexity_uft_jmp4_regression <- read.csv("H:/Desktop/csvs/avg_uft_jmp4_regression.csv")
avg_complexity_uft_jmp_smoke <- read.csv("H:/Desktop/csvs/avg_uft_jmp_smoke.csv")
avg_complexity_uft_jmp_birch <- read.csv("H:/Desktop/csvs/avg_uft_jmp_birch.csv")
avg_complexity_uft_smoke <- read.csv("H:/Desktop/csvs/avg_uft_smoke.csv")
avg_complexity_uft_jmp <- read.csv("H:/Desktop/csvs/avg_uft_jmp.csv")
avg_complexity_uft_mr_temp2 <- read.csv("H:/Desktop/csvs/avg_uft_mr_temp2.csv")

#ATRIUM_CREWEDITOR
cor.test(avg_complexity_atrium_creweditor$AVG, avg_length_atrium_creweditor$AVG)
cor.test(avg_complexity_atrium_creweditor$AVG, statement_comp_atrium_creweditor$PERCENTAGE)
cor.test(statement_comp_atrium_creweditor$PERCENTAGE, avg_length_atrium_creweditor$AVG)

#UFT_COMMON
cor.test(avg_complexity_uft_common$AVG, avg_length_uft_common$AVG)
cor.test(avg_complexity_uft_common$AVG, statement_comp_uft_common$PERCENTAGE)
cor.test(statement_comp_uft_common$PERCENTAGE, avg_length_uft_common$AVG)


#UFT_MR_TEMP2
cor.test(avg_complexity_uft_mr_temp2$AVG, avg_length_uft_mr_temp2$AVG)
cor.test(avg_complexity_uft_mr_temp2$AVG, statement_comp_uft_mr_temp2$PERCENTAGE)
cor.test(statement_comp_uft_mr_temp2$PERCENTAGE, avg_length_uft_mr_temp2$AVG)


#UFT_SMOKE
cor.test(avg_complexity_uft_smoke$AVG, avg_length_uft_smoke$AVG)
cor.test(avg_complexity_uft_smoke$AVG, statement_comp_uft_smoke$PERCENTAGE)
cor.test(statement_comp_uft_smoke$PERCENTAGE, avg_length_uft_smoke$AVG)

#UFT_JMP
cor.test(avg_complexity_uft_jmp$AVG, avg_length_uft_jmp$AVG)
cor.test(avg_complexity_uft_jmp$AVG, statement_comp_uft_jmp$PERCENTAGE)
cor.test(statement_comp_uft_jmp$PERCENTAGE, avg_length_uft_jmp$AVG)








