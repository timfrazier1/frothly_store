
package main
import (
        "fmt"
        "productservice/services"  // NEW
)
var appName = "productservice"
func main() {
        fmt.Printf("Starting %v\n", appName)
        services.StartWebServer("6767")           // NEW
}
