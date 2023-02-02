package main

import (
	"fmt"

	"github.com/spf13/cobra"
	"sigs.k8s.io/release-utils/version"
)

func main() {
	verCmd := version.Version()
	rootCmd := &cobra.Command{
		Use:   "slsa-and-guac-demo",
		Short: "A demo of SLSA and GUAC",
		Long: `A demo of SLSA's Container Generator and GUAC.
For more information on SLSA, visit https://slsa.dev`,
		RunE: func(cmd *cobra.Command, args []string) error {
			v := version.GetVersionInfo()
			v.Name = cmd.Root().Name()
			v.Description = cmd.Root().Short
			v.ASCIIName = "false"
			fmt.Println(v.String())
			return nil
		},
	}
	rootCmd.AddCommand(verCmd)
	rootCmd.Execute()
}
