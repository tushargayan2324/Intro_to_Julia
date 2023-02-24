using Plots

"""
function iterated_value(z::Complex)
    c = z
    iterations = 50
    for n = 1:iterations
        if abs2(z) > 4
            return n-1
    
        end
        z = z^2 + c
    end
    return iterations
end"""

function iterated_value(x,y)
    #c = z
    p,q = x,y
    iterations = 100
    for n = 1:iterations
        if (x^2 + y^2) > 4
            return n-1
        end
        #z = z^2 + c
        x,y = x^2 - y^2 + p, 2*x*y + q
    end
    return iterations
end



function mandel_brot(x_range,y_range)
    #iterated_value(0.4,0.01 )

    #A = zeros(Float64, (1000, 750))

    
    n = size(x_range)[1]
    m = size(y_range)[1]

    #A = fill(complex(0.0,0.0), (n,m))

    A = zeros(Int, (n,m))

    #A[1,1] = iterated_value(0.1,0.1)
    #A

    #typeof(A[1,1])

    for j in 1:m, i in 1:n
        #println(j/m)
        A[i, j] = iterated_value(x_range[i],y_range[j])
    end

    return A
end

#A
x_range = -1.5:0.0004:0.5
y_range = -1:0.0004:1


heatmap(mandel_brot(x_range,y_range); size=(2000,2500))
savefig("mandelbrot_plot.png")
