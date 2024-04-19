# Використання базового образу Alpine
   FROM alpine


   ARG IP_ADDRESS_1
   ARG IP_ADDRESS_2

   # Встановлення пакетів, необхідних для роботи з мережевими можливостями
   RUN apk update && apk add iproute2 curl

   COPY network.sh /network.sh
   RUN chmod +x /network.sh

   ENV IP_ADDRESS_1=192.168.0.2
   ENV IP_ADDRESS_2=192.168.0.1
  
   CMD ["/network.sh"]

  
