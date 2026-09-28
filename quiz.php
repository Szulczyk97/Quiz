<?php
      session_start();
      unset($_SESSION["jaki"], $_SESSION["zapytanie"], $_SESSION["grupa"], $_SESSION["blokada"], $_SESSION["dobre"], $_SESSION["zle"]);
?>
<!doctype html>
      <html lang="pl">
            <head>
                  <meta charset="UTF-8"/>
                  <meta name="author" content="Przemysław Szułczyński"/>
                  <meta name="robots" content="index, follow"/>
                  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                  <meta name="description" content="Projekt Quiz - strona pozwalająca na sprawdzenie swojej wiedzy z różnych dziedzin naukowych."/>

                  <meta property="og:type" content="website"/>
      		<meta property="og:url" content="https://szulczyk.pl/projekt-22/quiz"/>
      		<meta property="og:title" content="Szulczyk.pl | Projekt 22"/>
      		<meta property="og:description" content="Quizy naukowe"/>
      		<meta property="og:image" content="../favicon-512x512.webp"/>

                  <title>Quizy naukowe</title>
                  <link rel="stylesheet" media="(width >= 1100px)" href="./sass_quiz/quiz_domyslne.css"/>
			<link rel="stylesheet" media="(640px <= width < 1100px)" href="./sass_quiz/quiz_tablet.css"/>
			<link rel="stylesheet" media="(width < 640px)" href="./sass_quiz/quiz_telefon.css"/>
                  <link rel="apple-touch-icon" sizes="180x180" href="../favicon-touch-icon.webp"/>
      		<link rel="icon" type="image/webp" sizes="32x32" href="../favicon-32x32.webp"/>
      		<link rel="icon" type="image/webp" sizes="16x16" href="../favicon-16x16.webp"/>
			<link rel="shortcut icon" href="../favicon.ico"/>
            </head>
                  <body>
                        <div id="kontener">
                              <div id="naglowek">Quizy z Dziedzin Naukowych</div>

                              <div id="wybor">
                                    <div id="biologia">
                                          <div class="filtr">Quiz Biologiczny</div><form action="decyzja" method="post"><input type="hidden" value="1" name="jeden"/><input type="submit" id="pierwszy" value="Rozpocznij"/></form>
                                    </div>

                                    <div id="geografia">
                                          <div class="filtr">Quiz Geograficzny</div><form action="decyzja" method="post"><input type="hidden" value="2" name="dwa"/><input type="submit" id="drugi" value="Rozpocznij"/></form>
                                    </div>

                                    <div id="historia">
                                          <div class="filtr">Quiz Historyczny</div><form action="decyzja" method="post"><input type="hidden" value="3" name="trzy"/><input type="submit" id="trzeci" value="Rozpocznij"/></form>
                                    </div>
                              </div>

                              <div id="stopka">&copy; 2026 Szulczyk - Przemysław Szułczyński</div>
                        </div>
                  </body>
      </html>