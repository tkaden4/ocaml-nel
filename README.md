# ocaml-nel

A non empty list library for OCaml

```OCaml
(* create a Nel from a list *)
let _ = Nel.from_list ~init:0 [0; 1; 2]
(* create a nel directly *)
let _ = Nel.create 0 [1; 2]
(* use a Nel like List *)
let _ = Nel.from_list ~init:0 [1; 2; 3] |> Nel.map ~f:((+) 1)
```
