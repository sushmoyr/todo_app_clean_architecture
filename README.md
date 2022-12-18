# todo_app_clean_architecture

A simple todo app which implements clean architecture + MVVM design pattern using Riverpod as a State
Management tool. This repository can be a reference for other projects.

## Architecture Diagram

![](./resources/architecture_diagram.png)

## Project Structure

This project follows a feature first project structure. This means the app is segmented by features and
each features contains data, domain and presentation layers.

- lib
  - src
    - application
      - app.dart
    - core
      - components
      - constants
        - constants.dart
      - exceptions
        - app_exception.dart
      - extensions
      - themes
        - app_theme.dart
    - features
  - main.dart