let rec hanoi_aux dep aux dest n =
  if n = 0 then ()
  else
    begin
      hanoi_aux  dep dest aux (n-1);
      Printf.printf "Déplacer de %s vers %s le disque %d\n"  dep dest n;
      hanoi_aux  aux dep dest (n-1)
    end
let()=hanoi_aux "A" "B" "C" 5
let rec hanoi n =if n=0 then ()
else
hanoi_aux "A" "B" "C" n
let rec time_hanoi n =
  let start = Sys.time() in
  hanoi  n;
  let end_time = Sys.time() in
  Printf.printf "Temps d'exécution de la fonction hanoi avec %d disques : %.6f secondes\n" n (end_time -. start);;
let () =
  time_hanoi 5;;
(*c'est à partir de n=23 que  le temps va
