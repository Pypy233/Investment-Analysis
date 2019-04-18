# install.packages("gdata", repos = "http://cran.us.r-project.org")
# install.packages("frontier", repos="http://R-Forge.R-project.org")
library(frontier)
library(gdata)
data(front41Data)
data <- read.xls("data.xlsx", na.strings=c("NA","#DIV/0!"), sheet="Sheet1")
data2 <- read.xls("data.xlsx", na.strings=c("NA","#DIV/0!"), sheet="Sheet2")
data3 <- read.xls("data.xlsx", na.strings=c("NA","#DIV/0!"), sheet="Sheet3")
data4 <- read.xls("data.xlsx", na.strings=c("NA","#DIV/0!"), sheet="Sheet4")
# sfa_GDP_another <- function(sheet_num, header1, header2) {
#    print("---")
#    sheet <- paste("Sheet", sheet_num, sep="")
#    print(sheet)
#    data <- read.xls("data.xlsx", na.strings=c("NA","#DIV/0!"), sheet="Sheet1")
#    sfaResult <- sfa( log( GDP ) ~ log( COR ) + log( EFF ),
#           data = data )
#    coef( sfaResult, which = "ols" )
#    coef( sfaResult, which = "grid" )
#    coef( sfaResult)
#    print("-------Efficiencies-------")
#    efficiencies(sfaResult)

# }

print("----Data1----")
sfaResult <- sfa( log( GDP ) ~ log( COR ) + log( EFF ), data = data )
coef( sfaResult, which = "ols" )
coef( sfaResult, which = "grid" )
coef( sfaResult )

print("----Data2----")
sfaResult <- sfa( log( GDP ) ~ log( REG ) + log( LAW ), data = data2 )
coef( sfaResult, which = "ols" )
coef( sfaResult, which = "grid" )
coef( sfaResult )

print("----Data3----")
sfaResult <- sfa( log( GDP ) ~ log( VOL ) + log( STA ), data = data3 )
coef( sfaResult, which = "ols" )
coef( sfaResult, which = "grid" )
coef( sfaResult )

sfaResult <- sfa( log( GDP ) ~ log( LAO ) + log( GDPR ), data = data4 )
coef( sfaResult, which = "ols" )
coef( sfaResult, which = "grid" )
coef( sfaResult )





