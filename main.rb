def jugar(usuario)
  opciones = { 1 => "piedra", 2 => "papel", 3 => "tijera" }
  indice_computadora = rand(1..3)
  computadora = opciones[indice_computadora]

  puts "La computadora eligió: #{computadora}"

  if usuario == computadora
    puts "Empataste"
  elsif (usuario == "piedra" && computadora == "tijera") ||
        (usuario == "papel" && computadora == "piedra") ||
        (usuario == "tijera" && computadora == "papel")
    puts "Ganaste."
  else
    puts "Perdiste."
  end
end

# Verificar que el usuario haya proporcionado un argumento en caso de ser vacío
if ARGV.empty?
    puts "Argumento vacío: Debe ser piedra, papel o tijera."
else
  # Obtener la opción del usuario
  usuario = ARGV[0].downcase

  # Asociar las opciones ingresadas con los números correspondientes ya que la computadora juega e números al azar
  opciones_validas = { "piedra" => 1, "papel" => 2, "tijera" => 3 }
  
  # Verificar que el usuario haya ingresado una opción válida
  if opciones_validas.key?(usuario)
    jugar(usuario)
  else
    puts "Argumento invalido: Debe ser piedra, papel o tijera."
  end
  
end