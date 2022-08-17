function fx(x, a, b, c)
  y(n) = a*n^2 + b*n + c
  return y(x)
end

z = fx(1,2,3,4)

println(z)