<?php
      session_name("PROJEKT_QUIZ");
      session_start();

      if($_SERVER["REQUEST_METHOD"] !== "POST"){
            header("Location: quiz"); exit();
      }


      function generuj(string $jaki, string $wskaznik, string $jakie_id){
            $_SESSION["jaki"] = $jaki;
            $_SESSION["wskaznik"] = $wskaznik;
            $_SESSION["jakie_id"] = $jakie_id;
            $_SESSION["przycisk"] = "<input type='submit' value='Dalej' id='next".$jakie_id."' autocomplete='off' disabled/>";
            $_SESSION["numer"] = 1;
            $_SESSION["wylosowane"] = rand(1,120);
            header("Location: pytanie"); exit();
      }


      if(isset($_POST["jeden"]) && $_POST["jeden"] === "1"){
            generuj("Biologiczny","biologia","1");
      }elseif(isset($_POST["dwa"]) && $_POST["dwa"] === "2"){
            generuj("Geograficzny","geografia","2");
      }elseif(isset($_POST["trzy"]) && $_POST["trzy"] === "3"){
            generuj("Historyczny","historia","3");
      }elseif(isset($_POST["odp"], $_SESSION["zapytanie"]) && in_array($_POST["odp"], ["A","B","C","D"], true)){
            if($_POST["odp"] === $_SESSION["poprawne"]){
                  if(isset($_SESSION["dobre"])){
                        $_SESSION["dobre"]++;
                  }else{
                        $_SESSION["dobre"] = 1;
                  }
            }else{
                  if(isset($_SESSION["zle"])){
                        $_SESSION["zle"]++;
                  }else{
                        $_SESSION["zle"] = 1;
                  }
            }

            if(!isset($_SESSION["grupa"])){
                  $_SESSION["grupa"] = array();
            }
            array_push($_SESSION["grupa"], $_SESSION["wylosowane"]);
            do{
                  $_SESSION["wylosowane"] = rand(1,120);
            }while(in_array($_SESSION["wylosowane"], $_SESSION["grupa"]));

            if($_SESSION["numer"] === 10){
                  unset($_SESSION["numer"]);
                  $_SESSION["blokada"] = true;
                  header("Location: podsumowanie"); exit();
            }elseif($_SESSION["numer"] === 9){
                  $_SESSION["numer"]++;
                  $_SESSION["przycisk"] = "<input type='submit' value='Zakończ' id='next".$_SESSION["jakie_id"]."' autocomplete='off' disabled/>";
                  header("Location: pytanie"); exit();
            }else{
                  $_SESSION["numer"]++;
                  $_SESSION["przycisk"] = "<input type='submit' value='Dalej' id='next".$_SESSION["jakie_id"]."' autocomplete='off' disabled/>";
                  header("Location: pytanie"); exit();
            }
      }else{
            header("Location: quiz"); exit();
      }
?>