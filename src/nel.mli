
type 'a t

val create : 'a -> 'a list -> 'a t
val head : 'a t -> 'a
val tail : 'a t -> 'a list
val from_list : init:'a -> 'a list -> 'a t
val from_list_exn : 'a list -> 'a t
val to_list : 'a t -> 'a list

(* list functions *)
val map : 'a t -> f:('a -> 'b) -> 'b t
val fold_left : 'a t -> init:'b -> f:('b -> 'a -> 'b) -> 'b
val iter : 'a t -> f:('a -> unit) -> unit
