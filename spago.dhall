{ name = "ex"
, packages = ./packages.dhall
, dependencies =
  [ "effect"
  , "prelude"
  , "console"
  ]
, sources = [ "scripts/**/*.purs" ]
}
