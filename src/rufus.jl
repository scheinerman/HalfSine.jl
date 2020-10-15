using SimpleDrawing, Plots



f0(x) = (x>=0) ? -x : sin(-x)



"""
`hs(x)` is a continuous half-sine function.
"""
function hs(x::T) where T<:Real
    x = reset(x)
    return f0(x)
end 

function reset(x::T) where T<:Real
    x = asin(sin(x))
end

hs2(x) = hs(hs(x))


function coord_axes(x1,x2,y1,y2)
    draw_vector(x1,0,color=:black,linewidth=0.5)
    draw_vector(x2,0,color=:black,linewidth=0.5)
    draw_vector(0,y1,color=:black,linewidth=0.5)
    draw_vector(0,y2,color=:black,linewidth=0.5)
end

function make_picture()
    plot(hs,-4pi,4pi,aspect_ratio=1,legend=false,color=:black)

    coord_axes(-4.25pi,4.25pi,-2,1.5)
    finish()
    #plot!(hs2,-4pi,4pi,color=:red)
end

function make_picture_1()
    x = -pi/2 : 0.05 : pi/2
    y = hs.(x)

    plot(x,y,aspect_ratio=1,legend=false, color=:black, linewidth=1.5)   
    draw_vector(-2,0,color=:black,linewidth=0.5)
    draw_vector(2,0,color=:black,linewidth=0.5)
    draw_vector(0,1.2,color=:black,linewidth=0.5)
    draw_vector(0,-1.7,color=:black,linewidth=0.5)

    draw_segment(-pi/2,-0.1,-pi/2,0.1,color=:black,linewidth=0.5)
    draw_segment(pi/2,-0.1,pi/2,0.1,color=:black,linewidth=0.5)

    finish()
end