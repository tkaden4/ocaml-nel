# ocaml-nel

A non empty list library for OCaml

```OCaml
(* create a Nel from a list with a default *)
let _ = Nel.from_list ~init:0 [0; 1; 2]
(* convert a list to a Nel, raising an exception on an empty list *)
let _ = Nel.from_list_exn [0; 1; 2; 3; 4]
(* create a nel directly *)
let _ = Nel.create 0 [1; 2]
(* use a Nel like List *)
let _ = Nel.from_list ~init:0 [1; 2; 3] |> Nel.map ~f:((+) 1)
```
