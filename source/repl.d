module repl;

import std.stdio;
import std.string;
import parser;

void run()
{
  writeln("Welcome to the Drainfck REPL!");
  writeln("Type 'exit' to quit.");

  enum SIZE = 30_000;

  while (true)
  {
    write(">>> ");
    string code;

    while (true)
    {
        string line = stdin.readln().chomp();

        if (line == "exit")
            return;

        if (line == "")
            break;

        code ~= line ~ "\n";
    }

    int[SIZE] container;
    size_t dataCounter = 0;
    size_t programCounter = 0;

    parser.parse(code, programCounter, dataCounter, container);
  }
}
