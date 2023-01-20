package main

import (
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
			return verCmd.RunE(verCmd, args)
		},
	}
	rootCmd.AddCommand(verCmd)
	rootCmd.Execute()
}
