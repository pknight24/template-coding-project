matsqrt <- function(A){
    eigen.A <- eigen(A)
    out <- eigen.A$vectors %*% diag(sqrt(eigen.A$values)) %*% t(eigen.A$vectors)
    return(out)
}

norm2 <- function(x) sqrt(crossprod(x))
norm1 <- function(x) sum(abs(x))


