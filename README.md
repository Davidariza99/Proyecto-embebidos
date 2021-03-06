# Proyecto embebidos (Pet_Sitting)

## Integrantes:

- David Ariza
- Andres Unibio
- Sharem Alonso

## Descripción:
Vigilante y cuidador de mascotas en casa, permite al usuario interactuar con su mascota a la distacia.

## Justificación: 
Se ha presentado un aumento significativo de la adopción de mascotas durante la pandemia, a medida que las personas vuelven a sus oficinas, universidades y demas obligaciones fuera del hogar, las mascotas que fueron criadas con la constante compañia de sus dueños, ahora sienten su ausencia. Este proyecto busca crear un nuevo vinculo entre el dueño y la mascota mientras este no se encuentre en casa

## Requerimientos funcionales:
- Vigilar 
- Comando de voz: Llamar, consentir, felicitar y corregir
- Movilidad (en un solo nivel)

## Requerimientos no funcionales:
- Cámara
- Audios pregrabados (mp3)
- Motor y alimentación
- Módulo WiFi
- Control remoto (desde un dispositivo móvil)

## Diagrama de bloques:
### Propuesto
![Diagrama_bloques drawio](/DiagramaBloques.png)
### Final
![Diagrama_bloques drawio](/Diagrama_bloques_V2.png)

## Proceso:
Ya teniendo definida la idea del proyecto, se procede a escoger cada uno de los elementos que nos permitirán realizar las tareas requeridas. Se pensó inicialmente en usar como módulo principal el ESP32, sin embargo, teniendo en cuenta el requerimiento de la cámara y que las referencias de cámara consultadas para usar en el ESP32 como la OV7670 tienen cierta complejidad al momento de configurarla y no ofrecen la mejor calidad, se decidió buscar otro módulo que contará con mejores especificaciones y facilitará el proceso. La ESP32 CAM cuenta con una cámara OV2460, que ofrece una mejor calidad y ya viene configurada a la placa.

![ESP32_CAM](/imagenes/ESP32_CAM.png)

Teniendo claro esto, lo siguiente era el desplazamiento ¿Cómo hace que esta ESP32 CAM se desplaze por el espacio para cumplir la labor de vigilancia? Se escogió un puente H (L293D) conectados a dos motores que le darán esa habilidad, además de montar la tarjeta en un servo motor para tener la capacidad también de mover la cámara. 

Ya cumpliendo con los primeros requerimiento de cámara y desplazamiento, el siguiente es el de la intereacción que se tendrá con la mascota. Para esto, la interacción mas viable es la de poder hablar con ellos, con nuestra propia voz, debido a esto se tuvieron variass opciones. Teniendo en cuenta las limitaciones de pines del ESP32 CAM no era posible conectar el amplificador y parlante para emitir los audios pregrabados, por lo que se optó por la opción de un esclavo.

La primera opción, que se puede observar en el primer diagrama de bloques propuesto, tenía como esclavo un microcontrolador con el DAC integrado, necesario para enviar las señales a un amplificador y después al parlante. Sin embargo, el chip del microcontrolador escogido ocupaba mucho espacio para las pocas conexiones que se pensaban hacer, además tampoco se contó con suficiento documentación para su funcionamiento.

Debido a lo anterior, se optó por el DFPlayer Mini un modulo reproductor de audio mp3 con amplificador integrado y que incluso puede funcionar por si solo simplemente conectando pulsadores. Por lo que se acomodaba muy bien a nuestras necesidades.

![DFPlayer mini](/imagenes/DFPlayerMini.jpg)

De esta manera se obtuvo el diagrama de bloques final, donde hay adicional un bloque nombrado "servidor" que es una configuración que se establece por software para poder controlar nuestro dispositivo de manera remota.

## Esquemático

El siquiente esquemático fue el realizado para la implementación, teniendo en cuenta las recomendaciones de conexión de por ejemplo el DFPlayer mini, que para recepción y emisión se agregaron unas resistencias en serie para eliminar el ruido. Para la entrada se agregó un regulador de tensión para asegurar a la salida una tensión de 5V que es lo necesario para alimentar nuestro circuito.

![Esquemático](/imagenes/Esquematico.png)

## PCB

La primera versión de la PCB se realizó sin tener en cuenta anchos de los caminos, lo cual es importante ya que si son muy delgados no funcionará correctamente el circuito, se necesitan caminos mas anchos para la transmisión de potencia y de información. También se puede observar que no se hizo uso de las vías en más capas, creando muchos caminos en formas no convenientes que pueden generar inductancias indeseadas.

### Versión 1

![PCB V1](/imagenes/PCB_V1.png)

### Versión final

![PCB final](/imagenes/PCB_final.png)

## Programación

Para realizar la programación de nuestro pet sitting, se hizo uso de la plataforma de arduino. Se hizo la siguiente conexión para poder programar nuestra ESP32 CAM:

![Programming](/imagenes/Program.png)

de esta manera y descargando las librerías adecuadas, se puede acceder a un ejemplo de CameraWebServer, donde podemos observar el funcionamiento de la cámara, conenctándose remotamente desde un teléfono celular a una IP generada por el ESP32 CAM

![Code](/imagenes/Code.jpeg)

Para luego hace las adiciones en el código de nuestros motores y el servomotor, teniendo nuestro programa listo para ser ejecutado por nuestra placa

![Funciones](/imagenes/Funciones.jpeg)

El ejemplo además contaba con una interfaz gráfica que podíamos observar al momento de conectarnos a la IP, interfaz que se vió modificada, teniendo en cuenta nuestros requerimientos, agragando botones para el movimiento de motores y servo, además de deslizadores para controlar características de la cámara

![Interfaz](/imagenes/Interefaz.jpg)
