library(frontier)
data( front41Data )
sfaResult <- sfa( log( output ) ~ log( capital ) + 
log( labour ), data = front41Data )
coef( summary( sfaResult ), which = "ols" )
coef( summary( sfaResult ) )
coef( summary( sfaResult , extraPar = TRUE ) ) 