inventario = {'Notebooks'=> 4, 'PC Escritorio'=>  6, 'Routers'=>  10, 'Impresoras'=>  6}

def menu
  puts 'Ingrese opcion a elegir'
  puts ' 1) Agregar item y su stock, separar por coma(,)'
  puts ' 2) Eliminar item'
  puts ' 3) Actualizar un item'
  puts ' 4) Ver stock total'
  puts ' 5) Ver item con mayor stock'
  puts ' 6) Consultar por un item'
  puts ' 7) Salir'
end
menu

opcion = gets.chomp.to_i

while opcion != 7
  if opcion == 1
    puts 'Ingresar item y stock'
    item, stock = gets.chomp.split
    inventario[item] = stock.to_i
    puts inventario
    
  elsif opcion == 2
    puts inventario.keys
    puts 'Ingrese item a eliminar'
    eliminar = gets.chomp
    inventario.delete(eliminar)
    puts inventario

  elsif opcion == 3
    puts inventario.keys
    puts 'Ingrese item a actualizar'
    item_actualizado = gets.chomp
    puts 'Ingrese el stock del item'
    stock_actualizado = gets.chomp
    inventario[item_actualizado] = stock_actualizado.to_i
    puts inventario

  elsif opcion == 4
    total = inventario.inject(0) { |sum, e| sum += e[1]}
    puts "El stock total es #{total}"

  elsif opcion == 5
    valores = inventario.values
    puts "El item con mayor stock es #{inventario.key(valores.max)}"

  elsif opcion == 6
    puts 'Ingresa el item a consultar'
    consulta = gets.chomp
    puts inventario.has_key?(consulta) ? 'Si existe' : 'No existe'
  else
    puts 'ingrese un numero valido'
  end
  menu
  opcion = gets.chomp.to_i
end
puts 'Adios!!'