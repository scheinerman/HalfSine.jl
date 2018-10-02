function sage_maker(n::Int)
    println("a_1 = 1")
    for k=3:2:n
        println("a_$k = var('a_$k')")
    end
    print("f(x) = ")
    for k=1:2:n
        print("a_$k * x^$k")
        if k<n-1
            print(" + ")
        else
            println()
        end
    end
    println("y = f(f(x)).expand()")

    for k=3:2:n
        println("print y.coefficient(x^$k)")
    end
end
