#!/bin/bash
docker run --detach --name solo \
    --network nanguo_net \  # 加入自定义网络[6,7](@ref)
    --env RUNTIME_DB="MYSQL" \
    --env JDBC_USERNAME="root" \
    --env JDBC_PASSWORD=${PASSWD} \
    --env JDBC_DRIVER="com.mysql.cj.jdbc.Driver" \
    --env JDBC_URL="jdbc:mysql://mysql:3306/solo?useUnicode=yes&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true" \
    b3log/solo --listen_port=8080 --server_scheme=https --server_host=nanguomm.top --server_port=443
