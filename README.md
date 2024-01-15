Informacje o projekcie:

Projekt nie działa?
Proszę o jak najszybszy kontakt!

Informacje takie jak host, nazwa bazy, użytkownika oraz hasło są w `pliku .env` w głównym folderze repozytorium

Pierwsza wizyta na stronie `powinna` wyświetlić informację o migracji tabel do bazy danych, po odświeżeniu strony nigdy nie powinna się ona więcej pojawić, chyba że zostanie napotkany `problem` np. błąd konfiguracji serwera mysql lub brak połączenia z bazą.
Migrację można wykonać również manualnie za pomocą komendy wywołującej skrypt w kontenerze dockera:
```
sudo docker exec -it <apache-container-name> php scripts/Database/migrations.php
```


`Funkcjonalność back-end:`

Do poprawnego ładowania skryptów php zawierajacych klasy użyto `composera`.

W katalogu `app/` znajduje się plik `config.php` w którym możemy zdefiniować niektóre ustawienia serwera:
1. - [x] Informacje o logowaniu do bazy danych
    1. - [x] Domyślnie są pobierane w kontenerze jako zmienne środowiskowe
2. - [x] `SERVER_SOFTWARE` najlepiej zostawić na `AUTO`
3. - [x] `CSRF_TOKEN_LIFETIME` domyślnie 60 minut zanim nasz token wygaśnie, wartość podać w sekundach. 0 sekund = wyłączenie mozliwości walidacji użytkowników.
4. - [x] `EXCEPTION_ROUTE` na jaki adres ma nas przekierować w przypadku `błędu walidacji kodu, każdy rodzaj niewyłapanego exception za pomocą try catch`
5. - [x] `ERROR_ROUTE` na jaki adres ma nas przekierować w przypadku `błędu serwera`
6. - [x] `EMAIL_SENDER` Domyślny email użyty w konfiguracji serwera poczty do wysyłania wiadomości do użytkowników
7. - [x] Pozostałe wartości nie powinny być zmieniane, chyba że mamy absolutną pewność co do poprawności działania serwera po ich zmianie

Serwer posiada dodatkowe biblioteki pomocnicze:

1. - [x] Router
    1. - [x] Dodawanie routingu `statycznego` np `/login`, `/register` etc
        1. - [x] Routing statyczny zawsze jest sprawdzany w pierwszej kolejności przed dynamicznym, dzięki czemu router odróżni [GET] `/user/recovery` i [GET] `/user/{id}` 
    2. - [x] Dodawanie routingu `dynamicznego` np `/post/{id}`, `/profile/{user}` etc
        1. - [x] Walidacja za pomocą `Regular expression`
        2. - [x] Pobieranie danych z routingu dynamicznego i zwracanie jako `callback` za pomocą specjalnego `parsera`
    3. - [x] Wsparcie dla metody typu `GET`
    4. - [x] Wsparcie dla metody typu `POST`
    5. - [x] Walidacja poprawności `routów`
2. - [x] Database
    1. - [x] Zaaplikowany wzorzec singleton, jedno połączenie na użytkownika
    2. - [x] Dodatkowa klasa `Migrations` wspierająca migracje obiektów typu `Entity` do bazy
    3. - [x] Mapowanie atrybutów klas z informacjami o aktualnej strukturze tabeli w bazie danych.
    4. - [x] Klasa QueryBuilder wspierająca tworzenie zapytań do bazy danych
3. - [x] Obsługa assetów
    1. - [x] Identyfikacja assetu za pomocą jego `klucza`, dzięki czemu zmiana ścieżki do assetu `nie wpłynie` na działanie strony/skryptów np klasy View, plik konfiguracyjny znajduje się w `asset_config/asset_mapper.php`
4. - [x] Biblioteka Security
    1. - [x] Generowanie oraz walidacja tokenów `np. CSRF`
    2. - [x] Klasa wspierająca generowanie ukrytego pola z `tokenem` np. do `<form></form>`
    3. - [x] Konfiguracja `żywotności` pojedyńczego tokenu
    4. - [ ] Automatyczna walidacja metody POST na podstawie zawartego tokenu
    5. - [ ] Automatyczne zarządzanie sesją użytkownika 
5. - [x] Logger
    1. - [x] Możliwość konfiguracji np. Rodzaj instancji (debug,warning,error,info.. inne)
    2. - [x] Różne rodzaje instancji loggera
        1. - [x] Zapis do pliku
        2. - [ ] Zapis do bazy danych
    3. - [x] Wsparcie dla loggera `niestandardowego` za pomocą `interfejsu "LoggerInterface"`
6. - [x] Exception Handler
    1. - [x] Niestandardowa obsługa `nieoczekiwanych zachowań kodu`
    2. - [x] Zapis do pliku `logs/logger_name/filename_date.log`
    3. - [x] Informacja konsolowa za pomocą `error_log()`
7. - [x] Error Handler
    1. - [x] Niestandardowa obsługa błędów serwera typu `E_ERROR`, `E_WARNING`, `E_NOTICE` i inne jako `UNKNOWN ERROR`
    2. - [x] Zapis do pliku `logs/logger_name/filename_date.log`
    3. - [x] Informacja konsolowa za pomocą `error_log()`


Użyto struktury na podstawie wzorca `MVC` (Model-View-Controller)

1. - [x] Model(Entity)
    1. - [x] Entity reprezentuje tabele w bazie danych
    2. - [x] Operacje w bazie danych za pomocą `Entity`
        1. - [x] `Select` (funkcje typu find, findAll, findOneBy, findBy)
            1. - [x] Możliwość określania kryteriów wyszukiwania, jednego lub wielu
            2. - [x] Możliwość sortowania za pomocą `OrderBy ASC|DESC`
            3. - [x] Możliwość ustawienia limitu zwracanych rekordów
            4. - [x] Możliwość ustawienia offsetu dla zwracanych rekordów
        2. - [x] `Insert` `Wprowadza` dane na podstawie `przypisanych zmiennych do Entity`
        3. - [x] `Update` `Aktualizuje` dane w bazie na podstawie `przypisanych zmiennych do Entity`
        4. - [x] `Delete` `Usuwa` rekord, ale trzeba go najpierw znaleźć za pomocą funkcji typu find
        5. - [x] `Count` `Zwraca liczbe rekordów` w bazie na podstawie podanych kryteriów
    3. - [x] Używanie `atrybutów do mapowania` struktury tabeli (https://www.php.net/manual/en/language.attributes.overview.php)
    4. - [x] Wsparcie `relacji` w bazie danych
    5. - [ ] Wsparcie transakcji
2. - [x] View
    1. - [x] Renderowanie pełnego dokumentu html
    2. - [x] Wsparcie dla renderowania części kodu html jako `partial view` w głównym dokumencie typu `layout`
    3. - [x] Partial View
        1. - [x] Dynamiczne renderowanie plików .js
        2. - [x] Dynamiczne renderowanie plików .css
3. - [x] Controller
    1. - [x] Identyfikacja użytkownika zalogowanego, (funkcja)
    2. - [x] Identyfikacja za pomocą tokenu `CSRF` (funkcja) 
    3. - [x] Ułatwienie przekierowywania (funkcja)
    4. - [x] Obsługa danych `POST` za pomocą klasy `Request`
        1. - [x] Pozyskiwanie danych od użytkownika
        2. - [x] Filtrowanie danych z zmiennej `$_POST`
        3. - [x] Wsparcie dla obiektów `JSON`
    5. - [x] Obsługa odpowiedzi za pomocą klasy `Response`
        1. - [x] Wysyłanie odpowiedzi do front-endu z `odpowiednim kodem` reprezentującym status np 200,404,500 etc.
        2. - [x] Wysyłanie odpowiedzi do front-endu z `dodatkowymi danymi`



`Funkcjonalność front-end:`

1. - [x] Panel rejestracji
    1. - [x] Link wysyłany na maila jeżeli konfiguracja jest `poprawna`, w przeciwnym wypadku `wyświetli na stronie.`
    2. - [x] Pełna walidacja klient-serwer
    3. - [x] Komunikaty o błędach
2. - [x] Panel logowania 
    1. - [x] Pełna walidacja klient-serwer
    2. - [x] Komunikaty o błędach
    3. - [x] Jeżeli konto nie zostało aktywowane, to wyświetli `komunikat`
3. - [x] Przypominanie hasła
    1. - [x] Link wysyłany na maila jeżeli konfiguracja jest `poprawna`, w przeciwnym wypadku `wyświetli na stronie.`
    2. - [x] Pełna walidacja klient-serwer
    3. - [x] Komunikaty o błędach
4. - [ ] Panel administratora
    1. - [ ] Brak panelu, brak czasu
5. - [x] Panel użytkownika
    1. - [x] Zmiana hasła
    2. - [x] Zawartość profilu - lista dodanych `przez nas postów`
    3. - [x] Przycisk do `wylogowywania kończący sesję`
    4. - [ ] Posty innych użytkowników, które skomentowaliśmy
6. - [x] Obsługa strony `w 100% przez skrypt php (POST i GET)`
7. - [x] Obsługa strony `w 100% przez plik javascript pobierający dane z serwera`
8. - [x] Dodawanie / usuwanie zawartości
    1. - [x] Dodawanie postów
    2. - [x] Dodawanie komentarzy
    3. - [ ] Usuwanie postów
    4. - [ ] Usuwanie komentarzy
9. - [x] Wyświetlanie profili użytkowników
10. - [x] Wyświetlanie wszystkich postów na podstronie
    1. - [x] Paginacja - `maksymalnie 10 postów na stronę`
    2. - [x] Jeżeli post nie ma komentarzy to `można dodać odpowiedź na tej samej stronie`
    3. - [x] Jeżeli post ma komentarze, dodawanie kolejnych jest możliwe `na podstronie z danym postem`
    4. - [x] Główna strona z postami nie pobiera wszystkich`(pobiera 2)` komentarzy od razu, tylko po wciśnięciu odpowiedniego przycisku.
11. - [x] Obsługa błędów
    1. - [x] Podstrona z wyświetlaniem informacji o błędzie serwera
    2. - [x] Podstrona z wyswietlaniem informacji 404 - Strony nie znaleziono




