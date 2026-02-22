module repl;

import std.stdio;
import std.string;

void run()
{
  writeln("Welcome to the Drainfck REPL!");
  writeln("Type 'exit' to quit.");

  while (true)
  {
    write(">>> ");
    string input = stdin.readln().chomp();
    writeln(input);

    if (input == "exit")
      break;
  }
}
