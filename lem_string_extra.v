(* Generated by Lem from string_extra.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Require Import coqharness.

Open Scope nat_scope.
Open Scope string_scope.

(******************************************************************************)
(* String functions                                                           *)
(******************************************************************************)

Require Import lem_basic_classes.
Require Export lem_basic_classes.

Require Import lem_num.
Require Export lem_num.

Require Import lem_list.
Require Export lem_list.

Require Import lem_string.
Require Export lem_string.

Require Import lem_list_extra.
Require Export lem_list_extra.



(* [?]: removed value specification. *)

(* [?]: removed value specification. *)

(* [?]: removed value specification. *)

Program Fixpoint stringFromNatHelper  (n : nat ) (acc : list (ascii ))  : list (ascii ):= 
  if beq_nat n( 0%nat) then
    acc
  else
    stringFromNatHelper ( Coq.Numbers.Natural.Peano.NPeano.div n( 10%nat)) (ascii_of_nat ( Coq.Init.Peano.plus (Coq.Numbers.Natural.Peano.NPeano.modulo n( 10%nat))( 48%nat)) :: acc).
(* [?]: removed value specification. *)

Definition stringFromNat  (n : nat )  : string :=  
  if beq_nat n( 0%nat) then "0" else string_from_char_list (stringFromNatHelper n []).
(* [?]: removed value specification. *)

Program Fixpoint stringFromNaturalHelper  (n : nat ) (acc : list (ascii ))  : list (ascii ):= 
  if beq_nat n( 0%nat) then
    acc
  else
    stringFromNaturalHelper ( Coq.Numbers.Natural.Peano.NPeano.div n( 10%nat)) (ascii_of_nat ( ( Coq.Init.Peano.plus (Coq.Numbers.Natural.Peano.NPeano.modulo n( 10%nat))( 48%nat))) :: acc).
(* [?]: removed value specification. *)

Definition stringFromNatural  (n : nat )  : string :=  
  if beq_nat n( 0%nat) then "0" else string_from_char_list (stringFromNaturalHelper n []).
(* [?]: removed value specification. *)

Definition stringFromInt  (i : Z )  : string :=  
  if int_ltb i((Z.pred (Z.pos (P_of_succ_nat 0%nat)))) then  
    String.append"-" (stringFromNat (Z.abs_nat i))
  else
    stringFromNat (Z.abs_nat i).
(* [?]: removed value specification. *)

Definition stringFromInteger  (i : Z )  : string :=  
  if int_ltb i((Z.pred (Z.pos (P_of_succ_nat 0%nat)))) then  
    String.append"-" (stringFromNatural (Z.abs_nat i))
  else
    stringFromNatural (Z.abs_nat i).
(* [?]: removed value specification. *)

Definition nth  (s : string ) (n : nat )  : ascii :=  List.nth n (string_to_char_list s).
(* [?]: removed value specification. *)

Definition stringConcat  (s : list (string ))  : string := 
  List.fold_right String.append "" s.
(* [?]: removed value specification. *)

(* [?]: removed top-level value definition. *)
(* [?]: removed top-level value definition. *)

Definition stringLess  (x : string ) (y : string )  : bool :=  orderingIsLess (EQ).
Definition stringLessEq  (x : string ) (y : string )  : bool :=  negb (orderingIsGreater (EQ)).
Definition stringGreater  (x : string ) (y : string )  : bool :=  stringLess y x.
Definition stringGreaterEq  (x : string ) (y : string )  : bool :=  stringLessEq y x.

Instance x154_Ord : Ord string := {
   compare  :=  (fun  x  y=>EQ);
   isLess  :=  stringLess;
   isLessEqual  :=  stringLessEq;
   isGreater  :=  stringGreater;
   isGreaterEqual  :=  stringGreaterEq
}.

 
