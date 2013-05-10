/*
Copyright 2013 by Henrik Mühe

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

package main

import "net/http"
import "fmt"
import "log"
import "os/exec"

func buildQuery(param string) string {
	return "select title,content from news where id='"+param+"' and visible='1'"
}

func main() {
	http.HandleFunc("/news",func(w http.ResponseWriter, r *http.Request) {
		fmt.Println(buildQuery(r.FormValue("id")))
        cmd := exec.Command("sqlite3","-header","-column","wolfgang.sqlite3",buildQuery(r.FormValue("id")))
        out,_ := cmd.CombinedOutput()
        fmt.Fprintf(w,string(out))
	})
	log.Fatal(http.ListenAndServe(":1337",nil))
}
