(* This file has been edited by Fredrik Lindgren, a.k.a. Wisp,
   starting from 18 December 2012 and WeiDU 231.06. *)

open BatteriesInit
(* Pervasives FS calls *)
let backslash_to_slash s =
  let s = Str.global_replace (Str.regexp "\\\\") "/" s in
				s

let perv_open_out s = open_out (String.lowercase (backslash_to_slash s)) ;;
let perv_open_out_gen m i s = open_out_gen m i (String.lowercase (backslash_to_slash s)) ;;
let perv_open_out_bin s = open_out_bin (String.lowercase (backslash_to_slash s)) ;;
let perv_open_in s = open_in (String.lowercase (backslash_to_slash s)) ;;
let perv_open_in_gen m i s = open_in_gen m i (String.lowercase (backslash_to_slash s)) ;;
let perv_open_in_bin s = open_in_bin (String.lowercase (backslash_to_slash s)) ;;

let unix_openfile s a b = Unix.openfile (String.lowercase (backslash_to_slash s)) a b ;;
let unix_stat s = Unix.stat (String.lowercase (backslash_to_slash s)) ;;
let unix_chmod s p = Unix.chmod (String.lowercase (backslash_to_slash s)) p ;;
let unix_unlink s = Unix.unlink (String.lowercase (backslash_to_slash s)) ;;
let unix_mkdir s p = Unix.mkdir (String.lowercase (backslash_to_slash s)) p ;;
let unix_opendir s = Unix.opendir (String.lowercase (backslash_to_slash s)) ;;
let unix_rename s d = Unix.rename (String.lowercase (backslash_to_slash s)) (String.lowercase (backslash_to_slash d));;
let unix_rmdir s = Unix.rmdir (String.lowercase (backslash_to_slash s));;
let unix_stat64 s = Unix.LargeFile.stat (String.lowercase (backslash_to_slash s)) ;;

let sys_readdir s = Sys.readdir (String.lowercase (backslash_to_slash s));;

let weidu_executable = "weidu" ;;

(* No lowercasing to avoid the bug with ADD_* lowercasing also the variable *)
let filename_basename s = Filename.basename (backslash_to_slash s) ;;
let filename_check_suffix s = Filename.check_suffix (backslash_to_slash s) ;;
let filename_chop_extension s = Filename.chop_extension (backslash_to_slash s) ;;
let filename_chop_suffix s = Filename.chop_suffix (backslash_to_slash s) ;;
let filename_dirname s = Filename.dirname (backslash_to_slash s) ;;
let filename_is_implicit s = Filename.is_implicit (backslash_to_slash s) ;;

let fix_name s = String.lowercase (backslash_to_slash s);;

