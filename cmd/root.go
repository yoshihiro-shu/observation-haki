package cmd

import (
	"fmt"
	"os"

	"github.com/spf13/cobra"
)

const Name = "Observation Haki"

var rootCmdDescription = `Observation Haki application.`
var rootCmd = &cobra.Command{
	Use:   Name,
	Short: rootCmdDescription,
	Long:  rootCmdDescription,
}

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
