#shellcheck shell=sh

# shellcheck source=lib/libexec.sh
. "${SHELLSPEC_LIB:-./lib}/libexec.sh"

executor() {
  #shellcheck disable=SC2039
  [ "$(ulimit -n)" -lt 1024 ] && ulimit -n 1024

  {
    # kcov is looking for "sh" in the first comment line?
    echo "# This is a temporary translated specfile for kcov generated by shellspec."
    echo "# This file will be deleted automatically. If this file remains after"
    echo "# exits shellspec, you can delete it without any problem."
    echo ""
    translator --functrace --fd=537 "$@"
  } > "$SHELLSPEC_KCOV_IN_FILE"

  #shellcheck disable=SC2039,SC2086
  "$SHELLSPEC_KCOV_PATH" --bash-method=DEBUG \
    --bash-parser="$SHELLSPEC_SHELL" \
    --bash-parse-files-in-dir="$SHELLSPEC_PROJECT_ROOT" \
    $SHELLSPEC_KCOV_COMMON_OPTS $SHELLSPEC_KCOV_OPTS \
    "$SHELLSPEC_COVERAGEDIR" "$SHELLSPEC_KCOV_IN_FILE" 537>&1

  # Fix symbolic link to relative path
  ( cd "$SHELLSPEC_COVERAGEDIR"
    if [ -L "$SHELLSPEC_KCOV_FILENAME" ]; then
      link=$(ls -dl "$SHELLSPEC_KCOV_FILENAME")
      link=${link#*" $SHELLSPEC_KCOV_FILENAME -> "}
      link=${link%/}
      link=${link##*/}
      rm "$SHELLSPEC_KCOV_FILENAME"
      ln -s "$link" "$SHELLSPEC_KCOV_FILENAME"
    fi
  )
}
