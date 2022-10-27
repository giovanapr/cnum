using Pkg

dependencies = Pkg.project().dependencies

if !haskey(dependencies,"Calculus")
  Pkg.add("Calculus")
end

using Calculus

#ER 8.1.1
r = derivative(sin, 0.0)

println(r)

f(x) = sin(x) - (x^2)

dp(f,x,h) = (f(x+h)-f(x))/h
dr(f,x,h) = (f(x)-f(x-h))/h
dc(f,x,h) = (f(x+h)-f(x-h))/(2*h)

r = derivative(f, 2.0)
println(r)

r = dp(f,2.0,0.1)
println(r)
r = dp(f,2.0,0.01)
println(r)

r = dr(f,2.0,0.1)
println(r)
r = dr(f,2.0,0.01)
println(r)

r = dc(f,2.0,0.1)
println(r)
r = dc(f,2.0,0.01)
println(r)

#Exercício 8.1.1

f(x) = sin(x)
r = derivative(f, 2.0)
println(r)

r = dp(f,2.0,(10^-2))
println(r)
r = dp(f,2.0,(10^-3))
println(r)

r = dr(f,2.0,(10^-2))
println(r)
r = dr(f,2.0,(10^-3))
println(r)

r = dc(f,2.0,(10^-2))
println(r)
r = dc(f,2.0,(10^-3))
println(r)

f(x) = MathConstants.e^(-x)
r = derivative(f, 1.0)
println(r)

r = dp(f,1.0,(10^-2))
println(r)
r = dp(f,1.0,(10^-3))
println(r)

r = dr(f,1.0,(10^-2))
println(r)
r = dr(f,1.0,(10^-3))
println(r)

r = dc(f,1.0,(10^-2))
println(r)
r = dc(f,1.0,(10^-3))
println(r)

#Exercício 8.1.4
p = (2.69-1.83)/0.5
println(p)

r = (1.83-1.05)/0.5
println(r)

c = (2.69-1.05)/(2*0.5)
println(c)

M(x) = [x[1] 0 x[1]^3 ;
        x[2] 0 x[2]^3 ;
        x[3] 0 x[3]^3 ;
        x[4] 0 x[4]^3 ;
        x[5] 0 x[5]^3 ;
        x[6] 0 x[6]^3 ;
        x[7] 0 x[7]^3 ;
        x[8] 0 x[8]^3 ;
        x[9] 0 x[9]^3 ;
        x[10] 0 x[10]^3 ;
        x[11] 0 x[11]^3]


A = M([0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5])

B = [0; 1.05; 1.83; 2.69; 3.83; 4.56; 5.49; 6.56; 6.11; 7.06; 8.29]

a = A\B

f(x) = a[1]*x + a[3]*x^3

r = derivative(f,1.0)
println(r)
r = derivative(f,4.5)
println(r)