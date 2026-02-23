module parser;

import std.stdio;

void parse(string fileContent, ref size_t programCounter, ref size_t dataCounter, int[] container)
{
  while (programCounter < fileContent.length)
  {
    char currentChar = fileContent[programCounter];

    switch (currentChar)
    {
    case '>':
      if (dataCounter + 1 < container.length)
        dataCounter++;
      break;

    case '<':
      if (dataCounter > 0)
        dataCounter--;
      break;

    case '+':
      container[dataCounter]++;
      break;

    case '-':
      container[dataCounter]--;
      break;

    case '.':
      write(cast(char) container[dataCounter]);
      break;

    case ',':
      container[dataCounter] = getchar();
      break;

    case '[':
      if (!container[dataCounter])
      {
        int bracketDepth = 1;
        while (bracketDepth > 0 && programCounter + 1 < fileContent.length)
        {
          programCounter++;

          if (fileContent[programCounter] == '[')
            bracketDepth++;
          else if (fileContent[programCounter] == ']')
            bracketDepth--;
        }
      }
      break;

    case ']':
      if (container[dataCounter] != 0)
      {
        int bracketDepth = 1;
        while (bracketDepth > 0 && programCounter + 1 < fileContent.length)
        {
          programCounter--;

          if (fileContent[programCounter] == ']')
            bracketDepth++;
          else if (fileContent[programCounter] == '[')
            bracketDepth--;
        }
      }
      break;

    default:
      /* If any other character is encountered
      * mark it as a comment and ignore.
      */
      break;
    }

    programCounter++;
  }
}
