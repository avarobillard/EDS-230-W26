#' Photovoltaic Energy
#' 
#' Computes the energy produced from a photovoltaic system given the average annual solar radiation.
#'
#' @param A number indicating the solar panel area (m2)
#' @param H number indicating the annual average solar radiation (kWh m-2)
#' @param r number indicating the panel yield (dimensionless, 0-1), representing manufacturer efficiency (typically ~ 0.2)
#' @param PR number indicating the performance ratio (dimensionless, 0-1), accounting for site-specific losses (typically ~0.75)
#'
#' @return Energy produced (kWh)
#' @export
#'
#' @examples
#' photovoltaic_energy(A = 20, H = 1000)
#' photovoltaic_energy(A = 20, H = 1000, r = 0.3, PR = 0.8)
photovoltaic_energy <- function(A, H, r = 0.2, PR = 0.75) {
  E <- A * r * H * PR
  return(E)
}

photovoltaic_energy(A = 20, H = 1000, r = 0.2, PR = 0.75)
