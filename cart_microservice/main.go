
package main
import (
        "fmt"
        "cartservice/services"  // NEW
)
var appName = "cartservice"
func main() {
        fmt.Printf("Starting %v\n", appName)
        services.StartWebServer("4201")           // NEW
}
