
print([[CALCULADORA DE EQUACAO DE SEGUNDO GRAU
digite o valor de A]])
numero = (io.read("*n"))
print('digite o valor de B')
numero2 = (io.read("*n"))
print('digite o valor de C')
numero3 = (io.read("*n"))

--DELTA
function soma(a, b, c)
 return (b^2-4*a*c)
    end
delta = soma(numero, numero2, numero3)

--BHASKARA
if delta < 0 then
--IMAGINARIO

--B
function manual1(b)
    return(-b)
end
bimg = manual1(numero2)

--DELTA
function manual2(delta)
return(math.sqrt(-delta))
end
dimg = manual2(delta)

--A
function manual3(a)
    return(2*a)
end
    aimg = manual3(numero)
    


    --SIMPLIFICAR-- 
repeat
divisivel2 = false
divisivel3 = false
divisivel5 = false
    if bimg%2 == 0 and dimg%2 == 0 and aimg%2 == 0 then
    divisivel2 = true
elseif bimg%3 == 0 and dimg%3 == 0 and aimg%3 == 0 then
        divisivel3 = true
elseif bimg%5 == 0 and dimg%5 == 0 and aimg%5 == 0 then
        divisivel5 = true
    end

    if divisivel2 == true then
        bimg = bimg/2
    end
    if divisivel2 == true then
    dimg = dimg/2
    end
    if divisivel2 == true then
        aimg = aimg/2
    end

    

    if divisivel3 == true then
        bimg = bimg/3
    end
    if divisivel3 == true then
    dimg = dimg/3
    end
    if divisivel3 == true then
        aimg = aimg/3
    end


    if divisivel5 == true then
        bimg = bimg/5
    end
    if divisivel5 == true then
    dimg = dimg/5
    end
    if divisivel5 == true then
        aimg = aimg/5
    end
until divisivel2 == false and divisivel3 == false and divisivel5 == false
print(string.format("resultado final:X1 (%.0f+%.0fi)/%.0f e X2 (%.0f-%.0fi)/%.0f", bimg, dimg, aimg, bimg, dimg, aimg))
end

--NORMAL
if delta >= 0 then
    function bhaskaramais(a, b, delta)
    return ((-b+math.sqrt(delta))/(2*a))
end
numero5 = bhaskaramais(numero, numero2, delta)

function bhaskaramenos(a, b, delta)
    return ((-b-math.sqrt(delta))/(2*a))
end
numero6 = bhaskaramenos(numero, numero2, delta)

--RESULTADO
print(string.format('o valor de x1 e %.2f e o valor de x2 e %.2f', numero5, numero6))
end


