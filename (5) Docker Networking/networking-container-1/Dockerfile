# Використання базового образу Alpine
   FROM alpine

   # Встановлення пакетів, необхідних для роботи з мережевими можливостями
   RUN apk update && apk add iproute2 curl

  COPY network.sh /network.sh
  RUN chmod +x /network.sh
  
  CMD ["/network.sh"]

  
