package main

import (
	"encoding/json"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", foo)
	http.ListenAndServe(":3000", nil)
}

func foo(w http.ResponseWriter, r *http.Request) {
	version := os.Getenv("APP_COMMIT_REF")
	message := struct {
		Version string
	}{
		Version: version,
	}
	json.NewEncoder(w).Encode(message)
}
