using LinearAlgebra

function jacobi(A, B, k, error)
  n = size(B,1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = 0
      for j = 1:n
        if i != j
          count += A[i,j]*X[j]
        end
      end
      K[i] = (B[i]-count)/A[i,i]
    end
    if norm(X-K) < error
      break
    end
    X=copy(K)
  end
  return X
end

error = 10^-3


A = [1 1 1 ;
     4 4 2 ;
     2 1 -1]

B = [1; 2; 0]

x = A \ B
println(x)

x = jacobi(A, B, 100, error)
println(x)

function seidel(A, B, k, error)
  n = size(B,1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = [0.0 0.0]
      for j = 1:i-1
        count[1] += A[i,j]*K[j]
      end
      for j = i+1:n
        count[2] += A[i,j]*X[j]
      end
      K[i] = (B[i]-count[1]-count[2])/A[i,i]
    end
    if norm(X-K) < error
      break
    end
    X = copy(K)
  end
  return X
end

A = [1 1 1 ;
     4 4 2 ;
     2 1 -1]


B = [1; 2; 0]

x = A \ B
println(x)

x = seidel(A, B, 100, error)
println(x)
