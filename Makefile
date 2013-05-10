all: wolfgang.sqlite3

wolfgang.sqlite3: wolfgang.sql
	sqlite3 wolfgang.sqlite3 < wolfgang.sql

clean:
	rm -f wolfgang.sqlite3

run: wolfgang.sqlite3
	go run injection.go
