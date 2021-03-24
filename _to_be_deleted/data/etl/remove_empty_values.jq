walk(
  if type == "array" then
    map(select(. != null))
  elif type == "object" then
    with_entries(
      select(
        .value != null and
        .value != "" and
        .value != [] and
        .value != {}
      )
    )
  else
    .
  end
)