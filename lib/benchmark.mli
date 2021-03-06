val ms : float -> Mtime.span
val ns : float -> Mtime.span
val us : float -> Mtime.span
val s : float -> Mtime.span

val run :
     ?start:int
  -> ?sampling:[`Linear of int | `Geometric of float]
  -> ?stabilize:bool
  -> ?quota:Mtime.span
  -> int
  -> Measure.Extension.t list
  -> Test.Elt.t
  -> Measurement_raw.t array

val estimate :
     sampling:[`Linear of int | `Geometric of float]
  -> Mtime.Span.t
  -> Mtime.Span.t
  -> Test.Elt.t
  -> int

val all :
     ?start:int
  -> ?sampling:[`Linear of int | `Geometric of float]
  -> ?stabilize:bool
  -> ?run:int
  -> ?quota:Mtime.span
  -> Measure.Extension.t list
  -> Test.t
  -> (string, Measurement_raw.t array) Hashtbl.t
