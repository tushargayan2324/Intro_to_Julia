
function func(x)
    #return exp(-x)*x^(-0.2)
    return x^(1/x)
end


function integrate(f,x_i,x_f)
    dx = 10^(-6)
    S = 0

    N = floor(Int128,(x_f-x_i)/dx)
    #print(N)

    for i = 1:N
        S+= dx*f(x_i + i*dx)
    end

    return S
end

@time integrate(func, 1, 3)



#dx = 10^-7, 0.5->5 x^(1/x)
#3.743149 seconds
#5.369212775469708