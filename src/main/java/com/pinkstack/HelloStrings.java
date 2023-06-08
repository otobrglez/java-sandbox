// JEP 430: String Templates (Preview)
package com.pinkstack;

import java.time.*;
import java.time.format.DateTimeFormatter;

class HelloStrings {
  public static void main(String[] args) {
    String name = "Oto Brglez";
    System.out.println(STR."Hello my name is \{name} and the time is \{
      DateTimeFormatter.ofPattern("HH:mm:ss").format(LocalTime.now())
    }");
  }
}
