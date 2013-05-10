all: wolfgang.sqlite3
	go build injection.go

wolfgang.sqlite3: wolfgang.sql
	sqlite3 wolfgang.sqlite3 < wolfgang.sql

clean:
	rm -f wolfgang.sqlite3 injection

run: wolfgang.sqlite3
	go run injection.go
