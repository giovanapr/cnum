f1(x)=sqrt(x)-cos(x)
f2(x)=5*sin(x^2)-MathConstants.e^(x/10)

#Para V=30 R=1
f81(x)=((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x-30

#Para V=3 R=1
f82(x)=((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x-3

#Para V=3 R=10
f83(x)=10*((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x-3

#Para V=300m R=1
f84(x)=((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x-0.3

#Para V=-300m R=1
f85(x)=((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x+0.3

#Para V=-30 R=1
f86(x)=((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x+30

#Para V=-30 R=10
f87(x)=10*((10^-12)*(MathConstants.e^((x*(1.602176634*(10^-19))/(1.380649*(10^-23)*300))-1)))+x+30

error = 10^-5

function bisection(f,a,b)
  x=(a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a=x
    else
      b=x
    end
    x=(a+b)/2
  end
  return x
end

r1 = bisection(f1,0,1)
println(r1)

r21 = bisection(f2,0.4,0.5)
println(r21)

r22 = bisection(f2,1.7,1.8)
println(r22)

r23 = bisection(f2,2.5,2.6)
println(r23)

r23 = bisection(f81,0.7,0.9)
println(r23)

r23 = bisection(f82,0.7,0.8)
println(r23)

r23 = bisection(f83,0.6,0.8)
println(r23)

r24 = bisection(f84,0.2,0.4)
println(r24)

r24 = bisection(f85,-0.4,-0.2)
println(r24)

r24 = bisection(f86,-32,-28)
println(r24)

r24 = bisection(f87,-32,-28)
println(r24)

