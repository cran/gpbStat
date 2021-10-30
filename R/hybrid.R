#' Experimental Hybrid data
#'
#' The sample data containing mean values of 65 experimental maize hybrids for 7 variables.
#'
#'@docType data
#'
#'@usage data(hybrid)
#'
#' @format A data frame of 7 variables of 65 experimental maize hybrids.
#' \describe{
#'  \item{Hybrid}{Name of the hybrid}
#'  \item{DTP}{Days to anthesis}
#'  \item{DTS}{Days to silking}
#'  \item{DM}{Days to maturity}
#'  \item{PH}{Plant Height}
#'  \item{EH}{Ear Height}
#'  \item{GY}{DGrain yield}
#' }
#'@seealso
#'    \code{\link{alphaltcchk}}
#'    ,\code{\link{alphaltc}}
#'    ,\code{\link{rcbdltcchk}}
#'
#' @examples \dontrun{# Standard Heterosis
#' library(gpbStat)
#' data(hybrid)
#' data(check)
#' df = hcc(hybrid, check)
#' df
#' }

"hybrid"
