##### Przykłady ataków DoS (Denial of Service):
- **Ping of death** – sposób ataku na serwer internetowy za pomocą wysłania zapytania ping (ICMP Echo Request) w pakiecie IP o rozmiarze większym niż 65 535 bajtów (czyli 216 − 1).
- **SYN flood** – jeden z popularnych ataków w sieciach komputerowych. Do przeprowadzenia ataku wykorzystywany jest protokół TCP. Atak polega na wysyłaniu dużej ilości pakietów z ustawioną w nagłówku flagą synchronizacji (SYN) i najczęściej ze sfałszowanym adresem IP nadawcy (IP spoofing)
- **Teardrop** - The attacker sends fragmented packets to the target server, and in some cases where there’s a TCP/IP vulnerability, the server is unable to reassemble the packet, causing overload.
##### Przykłady ataków DDoS (Distributed Denial of Service):
- **Smurf attack** - odmiana ataku sieciowego ping flood, który polega na przeciążeniu łącza atakowanego systemu pakietami ping. O ile w wypadku ataku ping flood intruz wykorzystuje swoją przewagę w przepustowości używanego łącza, Smurf attack umożliwia skuteczną akcję użytkownikom łącza o słabszych parametrach niż to należące do atakowanego systemu.
- **Botnet**  - grupa komputerów zainfekowanych oprogramowaniem wirusowym, pozwalającym sterować nimi zdalnie (często za pomocą komunikatów przesyłanych siecią IRC) i to bez wiedzy użytkowników poszczególnych jednostek.
##### **Rodzaje ataków Brute Force**:
- **Podstawowy brute force** – ręczne wpisywanie kombinacji loginów i haseł w celu odgadnięcia poprawnej konfiguracji.
- **Atak słownikowy** – wykorzystanie algorytmu do przygotowania bazy słów najczęściej występujących w mowie codziennej, których prawdopodobieństwo zastosowania jako hasło jest największe.
- **Atak hybrydowy** – Połączenie podstawowego brute force z atakiem słownikowym.
- **Odwrócony brute force** – Z kolei gdy cyberprzestępca zna hasło (np. admin 1234), ale nie zna loginu, może wpisywać różne kombinacje w celu jego odgadnięcia.
- **Credential stuffing** – Wykorzystywanie przez cyberprzestępców potwierdzonych kombinacji loginów i haseł na innych portalach. Jeśli haker włamie się do poczty Gmail, może spróbować użyć tej samej kombinacji także na innych kontach (Facebook, PayPal, Netflix itp.).

**Atak XML external Entity**, lub po prostu **atak XXE**, to rodzaj ataku na aplikację, która analizuje dane wejściowe XML. Atak ten ma miejsce, gdy dane wejściowe XML zawierające odniesienie do jednostki zewnętrznej są przetwarzane przez słabo skonfigurowany parser XML.

**Spoofing** – grupa ataków na systemy teleinformatyczne polegająca na podszywaniu się pod inny element systemu informatycznego.

**Kryptologia** – dziedzina wiedzy o przekazywaniu informacji w sposób zabezpieczony przed niepowołanym dostępem.

**Kryptografia** polega na konstruowaniu i analizowaniu protokołów, które uniemożliwiają osobom trzecim lub społeczeństwu czytanie prywatnych wiadomości.

**Kryptoanaliza** – analiza systemu kryptograficznego w celu uzyskania informacji wrażliwej. Badane są możliwości naruszenia wszystkich zakładanych cech bezpieczeństwa – ataki na protokoły, łamanie szyfrów, fałszowanie podpisów, naruszanie integralności wiadomości itd.

**Steganografia** – nauka o komunikacji w taki sposób, by obecność komunikatu nie mogła zostać wykryta. W odróżnieniu od kryptografii steganografia próbuje ukryć fakt prowadzenia komunikacji.

**Szyfrogram** – wiadomość, która została zaszyfrowana.

**Klucz szyfrowania**(klucz szyfrujący/klucz deszyfrujący) to komponent kryptograficzny używany do szyfrowania i deszyfrowania danych w celu zapewnienia poufności i bezpieczeństwa przesyłanych informacji. Jest to ciąg bitów lub wartość numeryczna, która jest generowana przy użyciu odpowiednich algorytmów kryptograficznych.

**Szyfr** – funkcja matematyczna wykorzystywana do szyfrowania tekstu jawnego lub jego deszyfrowania.

##### Stopnie złamania zabezpieczeń szyfru:
* **Całkowite złamanie szyfru**: czyli odgadnięcie sekretnego klucza szyfrującego, a więc uzyskanie możliwości łamania wszystkich wiadomości zaszyfrowanych za jego pomocą.
* **Globalne wnioskowanie**: odgadnięcie algorytmu, który pozwala na odszyfrowywanie wielu wiadomości, bez znajomości sekretnego klucza.
* **Lokalne wnioskowanie**: odgadnięcie oryginalnej wiadomości dla konkretnego przechwyconego szyfrogramu, bez znajomości sekretnego klucza.
* **Częściowe wnioskowanie**: zdobycie niektórych informacji o kluczu lub o oryginalnej wiadomości (na przykład, odgadnięcie kilku bitów sekretnego klucza lub informacji o formacie tekstu jawnego).
##### Teoretyczne modele ataków:
* **Atak ze Znanym Tekstem Jawnym** - podczas ataku ze znanym tekstem jawnym kryptoanalityk dysponuje pewną ilością oryginalnych wiadomości wraz z ich szyfrogramami.
* **Atak z Wybranym Tekstem Jawnym** - podczas ataku z wybranym tekstem jawnym, kryptoanalityk ma możliwość wybrania tekstu wiadomości, która zostanie zaszyfrowana, a następnie ma dostęp do utworzonego w ten sposób szyfrogramu.
* **Atak ze Znanym Szyfrogramem** - podczas ataku ze znanym szyfrogramem kryptoanalityk dysponuje pewną liczbą zaszyfrowanych wiadomości.
* **Atak z Wybranym Szyfrogramem** - w ataku z wybranym szyfrogramem, kryptoanalityk ma możliwość analizowania różnych szyfrogramów i posiada dostęp do odpowiadających im odszyfrowanych wiadomości.
* **Atak z Wybranym Kluczem** - ataki z wybranym kluczem mają one na celu nie tyle złamanie szyfru, ale skompromitowanie szerszego systemu, którego działanie opiera się na tym szyfrze.

##### Ataki kryptograficzne:
* **Atak Siłowy** - Podczas ataku siłowego napastnik próbuje po kolei wszystkich możliwych kluczy szyfrujących (lub haseł), w nadziei, że któryś z nich zwróci prawidłowy tekst jawny.
* **DoS** - Atak DoS polega na zdalnym unieruchomieniu serwera i uniemożliwieniu mu reagowania na zapytania kierowane przez jego użytkowników i klientów.
* **Man-in-the-middle** - W ataku man-in-the-middle osoba atakująca system kryptograficzny włącza się do komunikacji pomiędzy dwoma stronami, zajmując potajemnie miejsce pomiędzy nimi.
* **Atak na Two-Time Pad** - Wielokrotne użycie tych samych bajtów klucza do szyfrowania różnych danych czyni szyfr podatnym na ataki na Two-Time Pad.
* **KRACK** - KRACK jest atakiem kryptograficznym mającym na celu odkrycie przez napastnika sekretnego klucza, zabezpieczającego komunikację bezprzewodową WPA2.
* **Atak Statystyczny** - Atak statystyczny polega na analizowaniu częstotliwości występowania znaków w szyfrogramie.
* **Atak meet-in-the-middle** - Za pomocą ataków tego typu można łamać szyfry, które używają dwóch lub więcej różnych kluczy do wielokrotnego szyfrowania za pomocą tego samego algorytmu.
* **Atak Metodą Powtórzenia** - Podczas ataku za pomocą metody powtórzenia, atakujący wysyła do ofiary dokładnie taką samą wiadomość, jaka była już użyta we wcześniejszej komunikacji, w której atakowany system brał udział.
* **Atak Homograficzny** - Ataki homograficzne polegają na tworzeniu fałszywych adresów URL, podszywających się pod prawdziwe adresy. Osoby odwiedzające podrabiane strony są atakowane przez skrypty malware i wirusy.

##### Metody ochrony przed CSRF:
* **Double Submint Cookies** - Mechanizm ten polega na przesyłaniu losowej wartości zarówno w pliku cookie, jak i jako parametru żądania (lub nagłówka). Jeśli token jest wysyłany w nagłówku zabezpieczenie jest często nazywane “Cookie-to-header token”.
* **Użycie gotowych bibliotek**
* **Losowe tokeny** 


##### Sposoby wykorzystania SQL Injection:
* **UNION-based SQLi attacks** –These attacks are orchestrated to obtain information from multiple tables
* In a **time-based** (blind) attack, hackers craft an SQL command that forces the server to wait a certain period before responding. They send this database query to the server then observe how long it takes to respond. Depending on whether the response was sent instantly or after a while, the hacker will determine whether the malicious queries were TRUE or FALSE statements without relying on any data sent by the server
* **Boolean/content-based** blind SQL injection attacks - this type of Blind SQLi attack involves testing the database server for vulnerabilities by crafting queries that ask the database TRUE or FALSE objective-type questions.
* **Error-based** SQLi is an in-band SQL Injection technique that relies on error messages thrown by the database server to obtain information about the structure of the database.
* **Stacked queries** provide a lot of control to the attacker. By terminating the original query and adding a new one, it will be possible to modify data and call stored procedures.

##### Mechanizmy ochrony danych
* **uznaniowa kontrola dostępu** –według [Trusted Computer System Evaluation Criteria](https://pl.wikipedia.org/wiki/TCSEC "TCSEC") poziom kryteriów oznaczony **C1**. Zapewnia elementarne bezpieczeństwo użytkownikom pracującym w środowisku wieloużytkownikowym i przetwarzającym dane o jednakowym poziomie tajności. Systemy **C1** stosują sprzętowe lub programowe mechanizmy [identyfikacji](https://pl.wikipedia.org/wiki/Uwierzytelnianie "Uwierzytelnianie") i [upoważniania](https://pl.wikipedia.org/wiki/Autoryzacja_(informatyka) "Autoryzacja (informatyka)") użytkowników.
* **obowiązkowa kontrola dostępu** –W MAC wyróżnia się podmioty ([ang.](https://pl.wikipedia.org/wiki/J%C4%99zyk_angielski "Język angielski") _subject_) oraz obiekty (ang. _object_). Podmiot to użytkownik lub proces. Obiektami mogą być przykładowo: [pliki](https://pl.wikipedia.org/wiki/Plik "Plik"), [katalogi](https://pl.wikipedia.org/wiki/Katalog_(system_plik%C3%B3w) "Katalog (system plików)"), urządzenia, klucze [rejestru](https://pl.wikipedia.org/wiki/Rejestr_(Windows) "Rejestr (Windows)"). Zarówno podmioty, jak i obiekty posiadają określone atrybuty bezpieczeństwa. System posiada również zestaw reguł (ang. _rule_) określających zasady dostępu, zwany polityką (ang. _policy_). [System operacyjny](https://pl.wikipedia.org/wiki/System_operacyjny "System operacyjny") na podstawie atrybutów bezpieczeństwa i polityki udziela bądź odmawia podmiotowi dostępu do obiektu.
* **statystyczne bazy danych** –huh
* **sporządzanie i analiza audytu operacji wykonywanych przez użytkownika na bazie danych**– o ile rozumiem to jest po prostu że płacom komuś/sami patrzą na swoją bazę danych i próbują ogarnąć gdzie można coś poprawić.  
##### Metody testów penetracyjnych
* **testy zewnętrzne** – [External Network penetration testing](https://www.mitnicksecurity.com/external-network-pentesting) looks at your current wealth of publicly available information or your externally-facing assets. The assessment team tries to leverage vulnerabilities they found while screening your organization's public information or attempts to gain access to data via external-facing assets, like company emails, cloud-based applications, and websites.
* **testy wewnętrzne** – An [internal network penetration test](https://www.mitnicksecurity.com/internal-network-pentesting) begins where the external pentest ends — from the inside of your organization’s outer defenses. Under this simulation, a pentester assumes the role of a malicious “insider,” such as an ill-intended employee who has a certain level of legitimate access to the internal network.
* **testowanie "w ciemno", testowanie ślepej próby (blind tests)** – This procedure imitates a real cyber attack, apart from the fact that the company has authorised it. The information given is limited and the ethical hacker has to go figure out most of the firm’s information, similar to an unethical hacker.
* **testowanie podwójnej ślepej próby (double-blind testing)** – to samo co blind test ale ogól organizacji testowanej nie jest poinformowany o teście. 
* **ukierunkowane testy** – huh?
* **etapy pentestu**
 ![[Pasted image 20240115172911.png]]
##### Ataki na strony www
* wstrzykiwanie zapytań SQL
* wstrzykiwanie treści XML
* wstrzykiwanie poleceń
* skrypty międzydomenowe
* fałszywe zapytania międzydomenowe
* przechwytywanie sesji
##### Serwery proxy
* przekazywanie zapytań wysyłanych przez klientów
* Burp Suite
* Zed Attack Proxy
* WebScarab
* Paros
* ProxyStrike

##### Automatyzacja ataków na strony WWW
* rekonesans
* Vega
* nikto
* dirbuster i gobuster
* serwery aplikacji Java
##### zakres audytu informatycznego 
* bezpieczeństwo i integralność danych
* plany ciągłości działania
* procedury zakupu sprzętu i oprogramowania
* utrzymanie oraz serwis sprzętu i oprogramowania
* zarządzanie zmianami
* zarządzanie jakością
* ocena systemu kontroli
* zgodność z uregulowaniami prawnymi i normatywnymi
* zarządzanie personelem działu informatycznego
* zarządzanie projektami informatycznymi
* analiza architektury sieci i możliwych dróg do systemów
* testy istniejących zabezpieczeń sprzętowych (hardware’owych)
* sprawdzenie bezpieczeństwa systemów backupu
* ochrona współdzielonych zasobów systemowych 
* sprawdzenie skuteczności działania systemów antywirusowych
* uwierzytelnianie i autoryzację haseł użytkowników
* kontrola dostępu przed dostępem użytkowników nieuprawnionych
* analiza zabezpieczeń programowych (software’owych)
* skanowanie systemu w celu oceny jego szczelności
* testy bezpieczeństwa serwera WWW
* testy systemu obsługi poczty
* testy pozostałych dostępnych usług
* identyfikacja i analiza zagrożeń
* testy penetracyjne sieci informatycznych
* analiza zabezpieczeń software’owych
* testy systemu firewall
* testy bezpieczeństwa serwera WWW
* testy systemu obsługi poczty i pozostałych dostępnych usług
* analiza bezpieczeństwa DNS
* analiza architektury sieci i możliwych dróg dostępu do systemów
##### Protokół zabezpieczający
* Protokół zabezpieczający (ang. security protocol) jest sekwencją kroków (wy- miany komunikatów), która ma na celu zapewnienie odpowiedniego poziomu bezpieczeństwa, przy użyciu technik kryptograficznych, takich jak szyfrowanie, czy funkcje haszujące.
##### pentest 
* Test penetracyjny (pentest) to symulowany cyberatak na system komputerowy w celu wykrycia możliwych do wykorzystania luk w zabezpieczeniach. W kontekście bezpieczeństwa aplikacji internetowych, testy penetracyjne są powszechnie stosowane w celu rozszerzenia zapory aplikacji internetowej (WAF, Web Application Firewall).