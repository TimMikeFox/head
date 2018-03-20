Feature: Head can be run from the command line

    Head is meant to be a command line application that reads input from either
    standard input, or an external file

    Scenario: No input provided
        Given no input
        When head is run
        Then only a newline is printed to standard output

    Scenario: One line on standard input
        Given these lines of input:
          """
          line one
          """
        When head is run
        Then the output lines should be:
          """
          line one

          """

    Scenario: Twelve lines on standard input
        Given these lines of input:
          """
          line one
          line two
          line three
          line four
          line five
          line six
          line seven
          line eight
          line nine
          line ten
          line eleven
          line twelve
          """
        When head is run
        Then the output lines should be:
          """
          line one
          line two
          line three
          line four
          line five
          line six
          line seven
          line eight
          line nine
          line ten

          """
