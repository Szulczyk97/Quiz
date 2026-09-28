<?php
      session_start();

      if(!isset($_SESSION["jaki"], $_SESSION["numer"])){
            header("Location: quiz"); exit();
      }

      if(!isset($_SESSION["zapytanie"])){
            $_SESSION["zapytanie"] = true;
      }
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
      		<meta property="og:url" content="https://szulczyk.pl/projekt-22/pytanie"/>
      		<meta property="og:title" content="Szulczyk.pl | Projekt 22: Pytanie"/>
      		<meta property="og:description" content="Quiz <?php echo $_SESSION["jaki"]; ?>"/>
      		<meta property="og:image" content="../favicon-512x512.webp"/>

                  <title>Quiz <?php echo $_SESSION["jaki"]; ?></title>
                  <link rel="stylesheet" media="(width >= 1100px)" href="./sass_quiz/quiz_domyslne.css"/>
			<link rel="stylesheet" media="(640px <= width < 1100px)" href="./sass_quiz/quiz_tablet.css"/>
			<link rel="stylesheet" media="(width < 640px)" href="./sass_quiz/quiz_telefon.css"/>
                  <link rel="apple-touch-icon" sizes="180x180" href="../favicon-touch-icon.webp"/>
      		<link rel="icon" type="image/webp" sizes="32x32" href="../favicon-32x32.webp"/>
      		<link rel="icon" type="image/webp" sizes="16x16" href="../favicon-16x16.webp"/>
			<link rel="shortcut icon" href="../favicon.ico"/>
                  <script type="text/javascript" src="./skrypty_quiz/quiz.js" defer></script>
            </head>
                  <body>
                        <div id="kontener">
                              <?php
                                    require_once("./php_quiz/laczenie.php");
                                    $polaczenie = new mysqli($host, $uzytkownik, $haslo, $baza);
                                    if($polaczenie->connect_error){
                                          echo "<div id='naglowek'>Błąd połączenia z bazą danych!</div>";
                                    }else{
                                          if(!in_array($_SESSION["wskaznik"], ["biologia","geografia","historia"], true)){
                                                header("Location: quiz"); exit();
                                          }
                                          echo "<div id='naglowek'>Quiz ".$_SESSION["jaki"]."</div>";
                                          echo "<div id='ktore'>Pytanie ".$_SESSION["numer"]."/10</div>";
                                          $sql = "SELECT * FROM ".$_SESSION["wskaznik"]." WHERE `id` = ?;";
                                          $przygotuj = $polaczenie->prepare($sql);
                                          $przygotuj->bind_param("i", $_SESSION["wylosowane"]);
                                          $przygotuj->execute();
                                          $wynik = $przygotuj->get_result();
                                          $kolumna = $wynik->fetch_row();
                                          $_SESSION["poprawne"] = $kolumna[6];
                                          echo "<div id='pytanie'>".$kolumna[1]."</div>";
                                          echo "<form action='decyzja' method='post'><div id='odpowiedzi'>";
                                          switch($_SESSION["jakie_id"]){
                                                case "1": echo "<div class='klawisz'><label class='bio' for='a'><input type='radio' class='quiz1' name='odp' value='A' id='a' autocomplete='off'/> <b>A.</b> ".$kolumna[2]."</label></div><div class='klawisz'><label class='bio' for='b'><input type='radio' class='quiz1' name='odp' value='B' id='b' autocomplete='off'/> <b>B.</b> ".$kolumna[3]."</label></div><div class='klawisz'><label class='bio' for='c'><input type='radio' class='quiz1' name='odp' value='C' id='c' autocomplete='off'/> <b>C.</b> ".$kolumna[4]."</label></div><div class='klawisz'><label class='bio' for='d'><input type='radio' class='quiz1' name='odp' value='D' id='d' autocomplete='off'/> <b>D.</b> ".$kolumna[5]."</label></div>"; break;
                                                case "2": echo "<div class='klawisz'><label class='geo' for='a'><input type='radio' class='quiz2' name='odp' value='A' id='a' autocomplete='off'/> <b>A.</b> ".$kolumna[2]."</label></div><div class='klawisz'><label class='geo' for='b'><input type='radio' class='quiz2' name='odp' value='B' id='b' autocomplete='off'/> <b>B.</b> ".$kolumna[3]."</label></div><div class='klawisz'><label class='geo' for='c'><input type='radio' class='quiz2' name='odp' value='C' id='c' autocomplete='off'/> <b>C.</b> ".$kolumna[4]."</label></div><div class='klawisz'><label class='geo' for='d'><input type='radio' class='quiz2' name='odp' value='D' id='d' autocomplete='off'/> <b>D.</b> ".$kolumna[5]."</label></div>"; break;
                                                case "3": echo "<div class='klawisz'><label class='his' for='a'><input type='radio' class='quiz3' name='odp' value='A' id='a' autocomplete='off'/> <b>A.</b> ".$kolumna[2]."</label></div><div class='klawisz'><label class='his' for='b'><input type='radio' class='quiz3' name='odp' value='B' id='b' autocomplete='off'/> <b>B.</b> ".$kolumna[3]."</label></div><div class='klawisz'><label class='his' for='c'><input type='radio' class='quiz3' name='odp' value='C' id='c' autocomplete='off'/> <b>C.</b> ".$kolumna[4]."</label></div><div class='klawisz'><label class='his' for='d'><input type='radio' class='quiz3' name='odp' value='D' id='d' autocomplete='off'/> <b>D.</b> ".$kolumna[5]."</label></div>";
                                          }
                                          $przygotuj->close();
                                          $polaczenie->close();
                                          echo "</div><div id='dalej'>".$_SESSION["przycisk"]."</div></form>";
                                    }
                              ?>

                              <div id="stopka">&copy; 2026 Szulczyk - Przemysław Szułczyński</div>
                        </div>
                  </body>
      </html>