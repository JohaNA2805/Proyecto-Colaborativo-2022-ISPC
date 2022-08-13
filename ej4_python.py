import math

# Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

Perro2 = [14,  "Fido",  "12/12/2012" , "Macho", 23546987]

print("Lista original:", Perro2)
print("Lista Perro2 invertida:")

# Alternativa al uso de la funcion reverse
def intercambiar():
    i = 0
    for n in range(math.floor(len(Perro2) / 2 )):
        i = i - 1
        Perro2[n], Perro2[i] = Perro2[i], Perro2[n]
    return Perro2 

# Se recorre la lista Perro2
for np in Perro2:
    print(np)

