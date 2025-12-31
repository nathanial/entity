import Lake
open Lake DSL

package entity where
  version := v!"0.0.1"

require crucible from git "https://github.com/nathanial/crucible" @ "v0.0.1"

@[default_target]
lean_lib Entity where
  globs := #[.andSubmodules `Entity]

lean_lib EntityTests where
  globs := #[.andSubmodules `EntityTests]

lean_exe entity_tests where
  root := `EntityTests.Main

@[test_driver]
lean_exe test where
  root := `EntityTests.Main
