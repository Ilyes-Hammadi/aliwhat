package main

import (
	"encoding/json"
	"net/http"
)

func main() {
	http.HandleFunc("/", foo)
	http.ListenAndServe(":3000", nil)
}

func foo(w http.ResponseWriter, r *http.Request) {
	message := struct {
		Message string
	}{
		Message: "Hello World",
	}
	json.NewEncoder(w).Encode(message)
}
