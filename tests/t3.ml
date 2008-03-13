open NSString
open NSSpeechSynthesizer

let () = Objc.debug_invoke true

let simple = 
  let ss = new NSSpeechSynthesizer.t (NSSpeechSynthesizer._new()) in (* default voice *)
    (fun s ->
	if ss#isSpeaking then (Debug.f "still speaking, stopping"; ss#stopSpeaking);
	Debug.f "start speaking";
	let say_what = NSString.stringWithCString s in
	let _ = ss#startSpeakingString (say_what :> [`NSString] Objc.t) in
	())

let () = 
  Arg.parse [] simple "Say something with the speech synthesizer";
  Unix.sleep 5
