using SimplePolynomials, BigCombinatorics


function sine_coeffs(n::Int)
    T = Rational{BigInt}
    result = zeros(T,2n)
    for j=1:n
        result[2j] = (-1)^(j-1)//Factorial(2j-1)
    end


    return result
end


"""
`sine_poly(n)` create exact sine power series of degree `2n`
(actually `2n-1` because `sin` is odd).
"""
function sine_poly(n::Int)
    return SimplePolynomial(sine_coeffs(n))
end
