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
      - design_system
      - router
      - app.dart
    - core
      - constants
        - constants.dart
      - di
      - errors
        - errors.dart
      - helpers
      - repositories
      - services
      - usecases
    - features
      - authentication
        - data
          - datasources
          - models
          - repositories
        - domain
          - entities
          - repositories
          - usecases
        - presentation
          - screens
          - viewmodels
          - widgets
      - todo
        - data
          - datasources
          - models
          - repositories
      - domain
        - entities
        - repositories
        - usecases
      - presentation
        - screens
        - viewmodels
        - widgets
    - i10n
  - main.dart