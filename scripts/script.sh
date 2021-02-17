OUTPUT=$(echo $ICENV_TAGS)
jq -n --arg env_var $OUTPUT \
        '{
          "env_var":$env_var,
        }'

