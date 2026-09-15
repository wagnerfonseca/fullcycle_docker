package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Full Cycle Rocks!!!"))
	})
	log.Println("Server is running on port 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
