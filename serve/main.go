package main

import (
	"github.com/gin-contrib/static"
	"github.com/gin-gonic/gin"
)

func main() {
	gin.SetMode(gin.ReleaseMode)
	r := gin.Default()

	r.Use(static.Serve("/", static.LocalFile("/web", false)))

	r.Run(":8080")
}
