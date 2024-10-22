(* Generated by Lem from string_extra.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.



Lemma stringFromNat_0:( (string_equal (stringFromNat( 0%nat)) "0"): Prop) .
Lemma stringFromNat_1:( (string_equal (stringFromNat( 1%nat)) "1"): Prop) .
Lemma stringFromNat_2:( (string_equal (stringFromNat( 42%nat)) "42"): Prop) .

Lemma stringFromNatural_0:( (string_equal (stringFromNatural( 0%nat)) "0"): Prop) .
Lemma stringFromNatural_1:( (string_equal (stringFromNatural( 1%nat)) "1"): Prop) .
Lemma stringFromNatural_2:( (string_equal (stringFromNatural( 42%nat)) "42"): Prop) .

Lemma stringFromInt_0:( (string_equal (stringFromInt((Z.pred (Z.pos (P_of_succ_nat 0%nat))))) "0"): Prop) .
Lemma stringFromInt_1:( (string_equal (stringFromInt((Z.pred (Z.pos (P_of_succ_nat 1%nat))))) "1"): Prop) .
Lemma stringFromInt_2:( (string_equal (stringFromInt((Z.pred (Z.pos (P_of_succ_nat 42%nat))))) "42"): Prop) .
Lemma stringFromInt_3:( (string_equal (stringFromInt ((Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 1%nat))))))) "-1"): Prop) .

Lemma stringFromInteger_0:( (string_equal (stringFromInteger((Z.pred (Z.pos (P_of_succ_nat 0%nat))))) "0"): Prop) .
Lemma stringFromInteger_1:( (string_equal (stringFromInteger((Z.pred (Z.pos (P_of_succ_nat 1%nat))))) "1"): Prop) .
Lemma stringFromInteger_2:( (string_equal (stringFromInteger((Z.pred (Z.pos (P_of_succ_nat 42%nat))))) "42"): Prop) .
Lemma stringFromInteger_3:( (string_equal (stringFromInteger ((Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 1%nat))))))) "-1"): Prop) .
 
