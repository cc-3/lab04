/////////////////////////////////////////////////////
/// Lab ARMv8 - Calculadora
/// Para compilar gcc -o calculadora ejercicio1.s
/// Para ejecutar ./calculadora
/////////////////////////////////////////////////////

.text
  .globl main

sumar:
    // x0 = x0 + x1
    // aqui solo hay que utilizar la funcion add
    add x0, x0, x1
    ret
resta:
    // Su codigo aqui
    ret
mult:
    // Su codigo aqui
    ret
div:
    // Su codigo aqui
    ret
and:
    // Su codigo aqui
    ret
or:
    // Su codigo aqui
    ret
xor:
    // Su codigo aqui
    ret
sll:
    // Su codigo aqui
    ret
srl:
    // Su codigo aqui
    ret
sra:
    // Su codigo aqui
    ret

main:
    add SP, SP, #-16
    str x30, [SP]         // guardamos x30 para poder llamar a funciones
    mov x0, #2 // Cargamos el numero 2
    mov x1, #2 // Cargamos el numero 2
    bl sumar // mandamos a llamar a add
    b exit

exit:
    // restauramos los registros
    ldr x30, [SP]
    add SP, SP, #16 // retornamos el espacio prestado del stack
    ret // retornamos al SO
