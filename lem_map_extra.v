(* Generated by Lem from map_extra.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Require Import coqharness.

Open Scope nat_scope.
Open Scope string_scope.



Require Import lem_bool.
Require Export lem_bool.
Require Import lem_basic_classes.
Require Export lem_basic_classes.
Require Import lem_function.
Require Export lem_function.
Require Import lem_assert_extra.
Require Export lem_assert_extra.
Require Import lem_maybe.
Require Export lem_maybe.
Require Import lem_list.
Require Export lem_list.
Require Import lem_num.
Require Export lem_num.
Require Import lem_set.
Require Export lem_set.
Require Import lem_map.
Require Export lem_map.

(* [?]: removed value specification. *)

Definition find0 {k v : Type} `{MapKeyType k}  (k1 : k) (m : fmap k v)  : v:=  match ( ((fmap_lookup_by mapKeyCompare k1 m))) with  Some x => x | None => DAEMON end.
(* [?]: removed value specification. *)

Definition fromSet {k v : Type} `{MapKeyType k}  (f : k -> v) (s : set k)  : fmap k v:=  set_fold (fun (k1 : k) (m : fmap k v) => fmap_add k1 (f k1) m) s fmap_empty.
(* [?]: removed value specification. *)

Definition fold {k r v : Type} `{MapKeyType k} `{SetType k} `{SetType v}  (f : k -> v -> r -> r) (m : fmap k v) (v1 : r)  : r:=  set_fold (
  fun (p : (k*v) % type) (r1 : r) =>
    match ( (p ,r1) ) with ( (k1,  v1) ,  r1) => f k1 v1 r1 end) (id m) v1.
(* [?]: removed value specification. *)

(* [?]: removed value specification. *)

(* OLD: TODO: mapMaybe depends on toList that is not defined for hol and isabelle *)
Definition mapMaybe0 {a b c : Type} `{MapKeyType a}  (f : a -> b -> option c ) (m : fmap a b)  : fmap a c:= 
  List.fold_left (fun (m' : fmap a c) (p : (a*b) % type) =>
  match ( (m' ,p) ) with ( m' ,  (k,  v)) =>
    match ( f k v) with | None => m' | Some v' => fmap_add k v' m' end end) (fmap_elements m) fmap_empty.

