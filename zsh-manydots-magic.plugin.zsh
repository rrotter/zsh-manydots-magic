# see https://github.zshell.dev/docs/zsh/Zsh-Plugin-Standard.html

if [[ $PMSPEC != *f* ]]; then
  0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
  0="${${(M)0:#/*}:-$PWD/$0}"

  fpath+=( "${0:h}/functions" )
fi

autoload -Uz manydots-magic
manydots-magic
