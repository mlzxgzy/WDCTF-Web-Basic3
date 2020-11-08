FROM mlzxgzy/caddy-php
COPY ./html/ /srv/
RUN apk add sed \
  && rm -rf /var/cache/apk/* \
  && echo 'if [ ! $FLAG ]; then export FLAG="{Flag_System_Was_Broken_Please_Contect_To_Administrator}"; fi' >> /n2r.sh \
  && echo 'sed -i "s/{put_flag_here}/$FLAG/g" /srv/uploads/shanghai.jpg' >> /n2r.sh \
  && echo 'chmod 777 -R /srv' >> /n2r.sh \
  && echo 'chmod 777 -R /tmp' >> /n2r.sh \
  && echo 'export FLAG=""' >> /n2r.sh
