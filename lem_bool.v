(* Generated by Lem from bool.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Require Import coqharness.

Open Scope nat_scope.
Open Scope string_scope.


(* [?]: removed value specification. *)

(* 
Definition not  (b : bool )  : bool :=  match ( b) with 
  | true => false
  | false => true
end. *)
(* [?]: removed value specification. *)

(* 
Definition and  (b1 : bool ) (b2 : bool )  : bool :=  match ( (b1, b2)) with 
  | (true,  true) => true
  | _ => false
end. *)
(* [?]: removed value specification. *)

(* 
Definition or  (b1 : bool ) (b2 : bool )  : bool :=  match ( (b1, b2)) with 
  | (false,  false) => false
  | _ => true
end. *)
(* [?]: removed value specification. *)

(* 
Definition imp  (b1 : bool ) (b2 : bool )  : bool :=  match ( (b1, b2)) with 
  | (true,  false) => false
  | _ => true
end. *)
(* [?]: removed top-level value definition. *)
(* [?]: removed value specification. *)

(* 
Definition equiv  (b1 : bool ) (b2 : bool )  : bool :=  match ( (b1, b2)) with 
  | (true,  true) => true
  | (false,  false) => true
  | _ => false
end. *)
(* [?]: removed value specification. *)

(* [?]: removed top-level value definition. *)
