# NOTICE — provenance and ownership

## What is in `scripts/`

Every `scripts/**/*.lua` file is a decompiled copy of AI bytecode shipped with the retail PC release of
**Dark Souls III** (1.15.x), taken from `Game/script/*.luabnd.dcx`.

| step | tool |
|---|---|
| unpack the retail archives | UXM |
| unpack `*.luabnd.dcx` into Lua 5.0 bytecode | WitchyBND |
| decompile bytecode to source | DSLuaDecompiler (katalash) |

Those files are the property of **FromSoftware, Inc. / Bandai Namco Entertainment**. This repository
makes no license claim over them. They are published for study and research; if you are a rights
holder and want them removed, open an issue and the repository will be taken down.

## What is not in here

No models, textures, sounds, animations, params (`*.param`), event scripts (`*.emevd`) or executables.

## What is ours

`README.md` and `NOTICE.md` were written for this repository and are MIT licensed — see `LICENSE`.
That licence does not extend to `scripts/`.
