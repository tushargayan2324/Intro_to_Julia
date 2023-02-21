
function func(x)
    #return exp(-x)*x^(-0.2)
    return x^(1/x)
    #return -(x-1)*(x-2)
end


function integrate(f,x_i,x_f)
    dx = 10^(-7)
    S = 0

    N = floor(Int128,(x_f-x_i)/dx)

    for i = 1:N
        S+= dx*f(x_i + i*dx/2)
    end

    return S
end

@time integrate(func, 0.5, 5)

#10^-7
#3.743149 seconds
#5.369212775469708