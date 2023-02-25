using Plots

function iterated_value(x,y)
    #c = z
    p,q = x,y
    iterations = 125
    for n = 1:iterations
        if (x^2 + y^2) > 4
            return n-1
        end
        #z = z^2 + c
        x,y = x^2 - y^2 + p, 2*x*y + q
    end
    return iterations
end

function mandelbrot(x_range,y_range)
    n = size(x_range)[1]
    m = size(y_range)[1]

    A = zeros(Int, (m,n))

    for i in 1:n, j in 1:m
        A[j, i] = iterated_value(x_range[i],y_range[j])
    end

    return A
end


x_range = -1.5:0.1:0.5
y_range = -1:0.1:1

#show(IOContext(stdout, :limit=>false), MIME"text/plain"(), mandel_brot(x_range,y_range))

heatmap(mandelbrot(x_range,y_range); size=(1200,950), legend=false)
savefig("mandelbrot_plot.png")
