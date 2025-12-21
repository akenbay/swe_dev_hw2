package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	// JSON Hello World
	e.GET("/", func(c echo.Context) error {
		return c.JSON(http.StatusOK, map[string]string{
			"message": "Hello, World!",
		})
	})

	// Example with Bad Request
	e.GET("/salam", func(c echo.Context) error {
		name := c.QueryParam("name")

		if name == "" {
			return c.JSON(http.StatusBadRequest, map[string]string{
				"error": "name is required",
			})
		}

		return c.JSON(http.StatusOK, map[string]string{
			"message": "Salam " + name,
		})
	})

	e.Logger.Fatal(e.Start(":1323"))
}