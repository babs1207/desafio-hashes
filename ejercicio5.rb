#Ejercicio 5
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = meses.zip(ventas).to_h
h.invert
valores = h.values
puts "El mes con mayor ventas es #{h.key(valores.max)}"

