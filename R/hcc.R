#' @name   hcc
#' @aliases hcc
#'
#' @title Estimation of Standard Heterosis.
#'
#' @param hybrid Data set containing the mean values of experimental genotypes.
#' @param check Data set containing the mean values of commercial checks.
#'
#' @note The name of variables in both the data sets should be identical.
#'
#' @return \item{\code{Standard Heterosis}}{A data set containing per cent Standard heterosis between experimental genotypes and checks for all the variables.}
#'
#' @author Nandan Patil \email{patilnads@@gmail.com}
#'
#' @details Estimating Standard heterosis between mean values of experimental genotypes and commercial checks.
#'
#'
#' @references
#' Singh, R. K. and Chaudhary, B. D. (1977). Biometrical Methods in Quantitative Genetic Analysis. Kalyani Publishers, New Delhi.
#'
#'@seealso \code{\link[gpbStat]{ltcchk}}\code{\link[gpbStat]{ltc}}
#'
#' @import stats
#' @import graphics
#' @import data.table
#' @export
#'
#' @examples \dontrun{# Standard Heterosis
#' library(gpbStat)
#' data(hybrid)
#' data(check)
#' df = hcc(hybrid, check)
#' df
#' }

hcc = function(hybrid, check){
df= hybrid
df2 = check
colnames(df)[1] <- "Genotype"
colnames(df2)[1] <- "Genotype"

setDT(df)
setDT(df2, keep.rownames = c("id"))

df.melt <- melt(df, id.vars = 'Genotype', variable.factor = FALSE)
df2.melt <- melt(df2, id.vars = c("id", 'Genotype'), variable.factor = FALSE)

ans <- df2.melt[df.melt, on = .(variable), allow.cartesian = TRUE]

ans[, id2 := rowid(i.Genotype, Genotype)]
ans[, name := paste(Genotype, variable, sep = ".")]

ans[, new.value := 100 * (i.value - value) / value]

dat = dcast(ans, i.Genotype ~ name, value.var = "new.value")
dat = setDF(dat)
return(dat)
}
