#Ejercicio 6
restaurant_menu = { "Arepa" => 3000, "Sushi" => 1500, "Burger" => 2500, "Coffe" => 350, "Lazaña" => 4500, "Dal Makhani" => 870}

valores = restaurant_menu.values
puts "El plato mas caro es #{restaurant_menu.key(valores.max)}"
puts "El plato mas barato es #{restaurant_menu.key(valores.min)}"
puts "El promedio del valor de los platos es #{(valores.sum / valores.count.to_f)}"
print "#{restaurant_menu.keys}\n"
print "#{restaurant_menu.values}\n"
iva = restaurant_menu.transform_values { |valor| valor * 1.19}
puts iva
iva.each do |key, value|
  iva[key] = (value * 0.8) if key.include? ' '
end
puts iva

