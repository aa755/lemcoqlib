(* Generated by Lem from list_extra.lem. *)

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
Require Import lem_maybe.
Require Export lem_maybe.
Require Import lem_basic_classes.
Require Export lem_basic_classes.
Require Import lem_tuple.
Require Export lem_tuple.
Require Import lem_num.
Require Export lem_num.
Require Import lem_list.
Require Export lem_list.
Require Import lem_assert_extra.
Require Export lem_assert_extra.

(* [?]: removed value specification. *)

Definition head {a : Type}  (l : list a)  : a:=  match ( l) with  | x::xs => x | [] => DAEMON end.
(* [?]: removed value specification. *)

Definition tail {a : Type}  (l : list a)  : list a:=  match ( l) with  | x::xs => xs | [] => DAEMON end.
(* [?]: removed value specification. *)

Program Fixpoint last {a : Type}  (l : list a)  : a:=  match ( l) with  | [x] => x | x1::x2::xs => last (x2 :: xs) | [] => DAEMON end.
(* [?]: removed value specification. *)

Program Fixpoint init {a : Type}  (l : list a)  : list a:=  match ( l) with  | [x] => [] | x1::x2::xs => x1::(init (x2::xs)) | [] => DAEMON end.
(* [?]: removed value specification. *)

Definition foldl1 {a : Type}  (f : a -> a -> a) (x_xs : list a)  : a:=  match ( x_xs) with  |( x :: xs) => List.fold_left f xs x | [] => DAEMON end.
(* [?]: removed value specification. *)

Definition foldr1 {a : Type}  (f : a -> a -> a) (x_xs : list a)  : a:=  match ( x_xs) with  |( x :: xs) => List.fold_right f x xs | [] => DAEMON end.
(* [?]: removed value specification. *)

(* 
Definition nth {a : Type}  (l : list a) (n : nat )  : a:=  match ( index l n) with  Some e => e | None => DAEMON end. *)
(* [?]: removed value specification. *)
 
Definition findNonPure {a : Type}  (P : a -> bool ) (l : list a)  : a:=  match ( (find P l)) with  
  | Some e      => e
  | None     => DAEMON
end.
(* [?]: removed value specification. *)
 
Program Fixpoint zipSameLength {a b : Type}  (l1 : list a) (l2 : list b)  : list ((a*b) % type):=  match ( (l1, l2)) with 
  | (x :: xs,  y :: ys) => (x, y) :: zipSameLength xs ys
  | ([],  []) => []
  | _ => DAEMON

end.
(* [?]: removed value specification. *)

Program Fixpoint unfoldr {a b : Type}  (f : a -> option ((b*a) % type) ) (x : a)  : list b:= 
  match ( f x) with 
    | Some (y,  x') =>
        y :: unfoldr f x'
    | None =>
        []
  end.
