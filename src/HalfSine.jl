# Nothing here yet

module HalfSine

using BigCombinatorics, SimplePolynomials

export semisine


include("data.txt")  # get the b-values

ndata = length(b)
a = [ b[k]//big(2)^(k-1) // Factorial(2k-1) for k=1:ndata ]


function semisine(x::Real,terms=10)
    sum(  a[k]*x^(2k-1) for k=1:terms)
end


end
