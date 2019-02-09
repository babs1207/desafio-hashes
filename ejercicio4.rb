#Ejercicio 4
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

personas_hash = personas.zip(edades).to_h
puts personas_hash

def promedio_edad(hash)
  valores = hash.values
  puts (valores.sum / valores.count.to_f)
end
promedio_edad({"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19})

