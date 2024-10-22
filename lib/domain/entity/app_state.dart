class AppState {
  const AppState();
}

class Initial extends AppState {}

class Authorized extends AppState {
  final String apiKey;
  const Authorized(this.apiKey);
}

class Premium extends AppState {}

class UnAuthorized extends AppState {}

class ConfigError extends AppState {}

class ForceUpdate extends AppState {}

class Block extends AppState {}
