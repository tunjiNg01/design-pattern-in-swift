# design-pattern-in-swift
This repository contain the source code for implementing different design pattern in swift programming language

### The singleton design pattern
This pattern ensures only one instance of a class is created and provides a global access point to that instance.
A singleton restricts access to a class, ensures that only an instance of that application is created, and provides access to that global instance.

Implementation of Single Design Pattern.

To implement single singleton we do the following
- Provide a private constructor to prevent the instantiation of the class from another class
- Declare a private static variable that provides the only instance of the class
- Declare a public static method that returns the instance to be used globally
- Declare the class to be final so that the class can not be inherited.

