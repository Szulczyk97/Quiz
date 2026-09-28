<?php
      session_start();

      if(!isset($_SESSION["blokada"])){
            header("Location: quiz"); exit();
      }

      switch($_SESSION["jakie_id"]){
            case "1": $_SESSION["nazwa"] = "Biologicznego"; break;
            case "2": $_SESSION["nazwa"] = "Geograficznego"; break;
            case "3": $_SESSION["nazwa"] = "Historycznego";
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
      		<meta property="og:url" content="https://szulczyk.pl/projekt-22/podsumowanie"/>
      		<meta property="og:title" content="Szulczyk.pl | Projekt 22: Podsumowanie"/>
      		<meta property="og:description" content="Podsumowanie Quizu <?php echo $_SESSION["nazwa"]; ?>"/>
      		<meta property="og:image" content="../favicon-512x512.webp"/>

                  <title>Podsumowanie Quizu <?php echo $_SESSION["nazwa"]; ?></title>
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
                              <div id="naglowek">Quiz <?php echo $_SESSION["jaki"]; ?></div>

                              <div id="podsumowanie">
                                    <?php echo "<div id='wynik".$_SESSION["jakie_id"]."'>Twój Wynik</div>"; ?>
                                    <div id="ilosc">Wszystkie odpowiedzi - <b>10</b></div>

                                    <div id="dobre">Dobre odpowiedzi - <b id="ok"><?php
                                    if(isset($_SESSION["dobre"])){
                                          echo $_SESSION["dobre"];
                                    }else{
                                          echo "0";
                                    }
                                    ?></b></div>

                                    <div id="zle">Złe odpowiedzi - <b id="nieok"><?php
                                    if(isset($_SESSION["zle"])){
                                          echo $_SESSION["zle"];
                                    }else{
                                          echo "0";
                                    }
                                    ?></b></div>
                              </div>

                              <div id="statystyka"></div>

                              <div><a href="quiz"><?php echo "<button id='next".$_SESSION["jakie_id"]."'>Powrót</button>"; ?></a></div>

                              <div id="stopka">&copy; 2026 Szulczyk - Przemysław Szułczyński</div>
                        </div>

                        <script src="https://www.gstatic.com/charts/loader.js"></script>
                        <script>
                              google.charts.load("current",{packages:["corechart"]});
                              google.charts.setOnLoadCallback(narysuj);

                              function narysuj(){
                                    const wynik = parseInt(document.getElementById("ok").textContent);
                                    const wynik2 = parseInt(document.getElementById("nieok").textContent);
                                    const dane = google.visualization.arrayToDataTable([["Odpowiedzi","Wynik"],["Dobre odpowiedzi",wynik],["Złe odpowiedzi",wynik2]]);
                                    const opcje = {title:"Twój Wynik",colors:["green","red"]};
                                    const wykres = new google.visualization.PieChart(document.getElementById("statystyka"));
                                    wykres.draw(dane,opcje);
                              }
                        </script>
                  </body>
      </html>