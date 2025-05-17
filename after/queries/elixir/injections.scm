;; Injeção para suporte a HTML em HEEx
(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#eq? @_sigil_name "H")
  (#set! injection.language "heex"))
