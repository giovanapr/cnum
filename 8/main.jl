using LinearAlgebra

function fixedpoint(a,g, error)
  x=g(a)
  while norm(x-a) > error
    a=x
    x=g(a)
  end
  return x
end

#Exercício 5.1.2

F(x) = [(2*x[1] - x[2] - cos(x[1])) ;
        (-x[1] + 2*x[2] - x[3] -cos(x[2]));
        (-x[2] + x[3] - cos(x[3]))]

J(x) = [(0) (2*x[2])
        (2*x[1]) (x[2]/2)]

g(x) = x - (inv(J(x))*F(x))

x = [1; 1]

error = 10^-8
r = fixedpoint(x,g, error)
println(r)
