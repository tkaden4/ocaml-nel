(* author: Kaden Thomas *)

open Core
open Std

(* the Nel datatype
 * always has a first element,
 * then a regular list afterwards *)
type 'a t = 'a * 'a list

(* create a Nel directly *)
let create (hd : 'a) (tl : 'a list) = (hd, tl)

(* head and tail accessors *)
let head (hd, _) = hd
let tail (_, tl) = tl

(* convert a list to a Nel
 * [init] if [xs] is empty*)
let from_list ~init:init = function
    | [] -> create init []
    | x :: xs -> create x xs

exception Convert_to_nel

(* convert a list to a Nel,
 * throwing an exception if
 * [xs] is empty *)
let from_list_exn = function
    | [] -> raise Convert_to_nel
    | x :: xs -> create x xs

(* convert a Nel to a list *)
let to_list (hd, tl) = hd :: tl


(* Core.List equivalents *)

let map (hd, tl) ~f:f = create (f hd) (List.map ~f:f tl)

let fold_left (hd, tl) ~init:init ~f:f =
    let first = f init hd in
    List.fold_left ~init:first ~f:f tl

let iter (hd, tl) ~f:f =
    f hd ;
    List.iter ~f:f tl
