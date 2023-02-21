using Plots

x = [i for i = 1:12]
y = x.^2

plot(x,y)

##########################################################
# look up for plots documentation for other styles
##########################################################

Plots.theme(:dark)


plot(x,y,color="white",label="line")

scatter!(x,y,markersize=7,color="white",alpha = 0.6,size = (1000, 500),label="scatter")#,legend = false)


