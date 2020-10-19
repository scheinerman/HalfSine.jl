export hs0, hs

"""
`hs0(x)` returns the Rufus Isaacs derived half sine
that is valid on [-π,π].
"""
hs0(x) = (x>=0) ? -x : sin(-x)



"""
`hs(x)` is a continuous half-sine function created by extending
`hs0`.
"""
function hs(x::T) where T<:Real
    x = _reset(x)
    return hs0(x)
end 


"""
`_reset(x)` is `asin(sin(x))` to map `x` 
into the domain of `h0`.
"""
function _reset(x::T) where T<:Real
    x = asin(sin(x))
end


function make_picture()
    plot(hs,-4pi,4pi,aspect_ratio=1,legend=false,color=:black)
    draw_xaxis()
    draw_yaxis()
    
    finish()
end

function make_picture_1()
    x = -pi/2 : 0.05 : pi/2
    y = hs.(x)

    plot(x,y,aspect_ratio=1,legend=false, color=:black, linewidth=1.5)   
    draw_vector(-2,0,color=:black,linewidth=0.5)
    draw_vector(2,0,color=:black,linewidth=0.5)
    draw_vector(0,1.2,color=:black,linewidth=0.5)
    draw_vector(0,-1.7,color=:black,linewidth=0.5)

    # draw_segment(-pi/2,-0.1,-pi/2,0.1,color=:black,linewidth=0.5)
    # draw_segment(pi/2,-0.1,pi/2,0.1,color=:black,linewidth=0.5)

    draw_xaxis()
    draw_yaxis()

    finish()
end