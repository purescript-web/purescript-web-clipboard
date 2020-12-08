{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "web-clipboard"
, dependencies = [ "psci-support", "web-html" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
