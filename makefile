webserver: main.cpp ./threadpool/threadpool.h ./http/http_conn.cpp ./http/http_conn.h ./lock/locker.h ./CGImysql/sql_connection_pool.cpp ./CGImysql/sql_connection_pool.h
	g++ -o server main.cpp ./threadpool/threadpool.h ./http/http_conn.cpp ./http/http_conn.h ./lock/locker.h ./CGImysql/sql_connection_pool.cpp ./CGImysql/sql_connection_pool.h -lpthread -lmysqlclient


clean:
	rm  -r server
