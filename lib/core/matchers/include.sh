#shellcheck shell=sh

shellspec_syntax 'shellspec_matcher_include'

shellspec_matcher_include() {
  shellspec_matcher__match() {
    SHELLSPEC_EXPECT=$1
    [ "${SHELLSPEC_SUBJECT+x}" ] || return 1
    shellspec_includes "$SHELLSPEC_SUBJECT" "$SHELLSPEC_EXPECT"
  }

  shellspec_matcher__failure_message() {
    shellspec_putsn "expected $1 to include $2"
  }

  shellspec_matcher__failure_message_when_negated() {
    shellspec_putsn "expected $1 not to include $2"
  }

  shellspec_syntax_param count [ $# -eq 1 ] || return 0
  shellspec_matcher_do_match "$@"
}
