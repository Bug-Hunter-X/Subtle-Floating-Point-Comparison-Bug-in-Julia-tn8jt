```julia
function myfunction(x)
  if x > 0
    return x^2
  elseif isapprox(x, 0.0; atol=1e-9) # using isapprox to compare with tolerance
    return 0
  else
    return -x^2
  end
end

println(myfunction(2.0))
println(myfunction(0.0))
println(myfunction(-2.0))
println(myfunction(1e-10)) #test a near zero value
```