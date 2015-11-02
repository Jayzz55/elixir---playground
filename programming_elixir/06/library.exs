# Convert a float to a string with 2 decimal digits.
iex> :io.format("~.2f~n", [2.0/3.0])
0.67
:ok

# Get the value of an operating system environment variable.
iex> System.get_env("HOME")
"/Users/dave"

# Return the extension component of a file name
iex> Path.extname("dave/test.exs")
".exs"

# Return the current working directory of the process
iex> System.cwd
"/Users/dave/BS2/titles/elixir/Book/yourturn/ModulesAndFunctions"

# Convert a string containing JSON into Elixir data structures
# There are many options. Some, such as https://github.com/guedes/exjson,
# are specifically for Elixir. Others, such as https://github.com/hio/erlang-json
# are Elnag libraries that are usable from Elixir.

# Execute an command in your operating system's shell
iex> System.cmd("date")
"Sun Jul 14 15:04:06 CDT 2013\n"
