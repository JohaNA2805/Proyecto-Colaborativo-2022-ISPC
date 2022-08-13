'''  2)Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando
sus elementos por pantalla con excepción del DNI y el apellido.
Los elementos de la lista son:
23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)
'''

Dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"]
for i in Dueno2:
    if i == Dueno2[0] or i == Dueno2[2]:
        continue
    print(i)

print("--------------------")

'''7)  Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores:
9530, 4120, 4580, 1500, 890,7516,426
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Lennon”.
 Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. 
 Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.'''

Historial3= (9530,4120,4580,1500,7516,426)
mean = sum(Historial3)
print(f"El promedio de gasto en pesos es :  $ {mean}")
if mean > 4500:
    print(f"Se ha excedido del gasto promedio para su mascota")
