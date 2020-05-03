## Description ##

Projeto de automação de aplicativos móveis.


## Used Tech ##

- Appium;
- Ruby;
- Cucumber;
- Genymotion;
- Arc;


## Structure Project ##

- features
    - step_definitions
      - login_stepes.rb
    - support
      - caps
        - appium.txt
      - screens
        - android
          - screens.rb
        - ios
          - screens.rb
        - droid.rb
        - ios.rb
      - env.rb
      - hooks.rb
    - login.feature
- log
- Gemfile
- app-debug.apk
- Gemfile.lock
- README.md


## Precondition ##

- Ter Instalado o JDK do Java
- Ter instalado o Android Studio, apontando no tools arquivos obsoletos
- Configurado as vaiáveis de ambiente
- Ruby
- Bundle

## Configuration ##

- Git clone do projeto
- Bundle install


## Execute ##

- cucumber