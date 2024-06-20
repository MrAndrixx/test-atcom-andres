# Instrucciones

### Compilado
La manera más fácil de compilar el proyecto es a través de un IDE como Visual Studio Code o IntelliJ.
Debería de crear la base de datos al momento de compilar.

### Probar
Una vez la app esté compilada, se puede llenar la base de datos directamente en http://localhost:8080/h2-console o a
través del endpoint POST "/distance". Se requiere truckId, date, y odometerReading.

Ejemplo:
http://localhost:8080/distance?truckId=1&date=2024-06-18&odometerReading=20

Para obtener los datos calculados, se debe llamar el endpoint GET "/distance". Este admite varios parametros tales como
truckId (opcional), startDate (obligatorio), endDate (opcional)

Ejemplos:
http://localhost:8080/distance?truckId=1&startDate=2024-06-18
http://localhost:8080/distance?truckId=1&startDate=2024-06-18&endDate=2024-06-20