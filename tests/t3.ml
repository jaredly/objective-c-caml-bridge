open NSString
open NSSpeechSynthesizer

let ns_of_string (s : string) = new native_NSString (class_NSString#stringWithCString s)

let simple = 
  let o_ss = class_NSSpeechSynthesizer#_new in (* default voice *)
  let ss = new native_NSSpeechSynthesizer o_ss in
    (fun s ->
	if ss#isSpeaking then (Debug.f "still speaking, stopping"; ss#stopSpeaking);
	Debug.f "start speaking";
	let say_what = ns_of_string s in
	let _ = ss#startSpeakingString (say_what :> [`NSString] Objc.t) in
	())


let () = 
  Arg.parse [] simple "Say something"
