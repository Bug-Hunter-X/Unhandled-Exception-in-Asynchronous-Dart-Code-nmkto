# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: failing to handle exceptions that might occur during asynchronous operations. The provided code attempts to fetch data from a remote API, but doesn't properly handle potential network errors or API errors. The solution showcases best practices for exception handling using `try-catch` blocks and explains how to gracefully handle failures.

## Bug

The `bug.dart` file contains the flawed code.  It attempts to fetch data asynchronously, but if any error happens (e.g., network issues or API errors), it only prints the error to the console and then rethrows it.  This can lead to unexpected application crashes or termination.  In a production environment, a more robust error handling strategy is required to maintain application stability.

## Solution

The `bugSolution.dart` file provides an improved version of the code. It uses a `try-catch` block to catch potential exceptions during the `http.get` call and handles them gracefully, preventing the application from crashing.  Additionally, it demonstrates better error reporting to the user or logging system.