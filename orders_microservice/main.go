
package main
import (
        "fmt"
        "ordersservice/services"  // NEW
)
var appName = "ordersservice"
func main() {
        fmt.Printf("Starting %v\n", appName)
        services.StartWebServer("4201")           // NEW
}
