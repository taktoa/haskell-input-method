;;; -*- mode: Emacs Lisp; coding: utf-8 -*-
;;; haskell-input-method --- Haskell Unicode input method for Emacs

;;; License:
;;
;; Copyright 2010—2011 Roel van Dijk    <vandijk.roel@gmail.com>
;; Copyright      2015 Remy Goldschmidt <taktoa@gmail.com>
;;
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;;
;;     * Redistributions of source code must retain the above
;;       copyright notice, this list of conditions and the following
;;       disclaimer.
;;
;;     * Redistributions in binary form must reproduce the above
;;       copyright notice, this list of conditions and the following
;;       disclaimer in the documentation and/or other materials
;;       provided with the distribution.
;;
;;     * The name of Roel van Dijk and the names of contributors may
;;       NOT be used to endorse or promote products derived from this
;;       software without specific prior written permission.
;;
;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
;; FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
;; COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
;; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
;; (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
;; SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
;; STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
;; OF THE POSSIBILITY OF SUCH DAMAGE.

;;; Commentary:
;;
;; This library provides an input mode for writing Haskell with Unicode syntax
;; or Unicode names.

;;; Code:

(require 'quail)

(quail-define-package
 "haskell-unicode"                      ; name
 "UTF-8"                                ; language
 "\\"                                   ; title
 t                                      ; guidance
 "Haskell Unicode input method.
Designed to be used with the Haskell UnicodeSyntax language
extension in combination with the x-unicode-symbols set of
packages (base-unicode-symbols and containers-unicode-symbols).
"                                       ; docstring
 '(("\t" . quail-completion))           ; translation-keys
 t                                      ; forget-last-selection
 t                                      ; deterministic
 nil                                    ; kbd-translate
 nil                                    ; show-layout
 nil                                    ; create-decode-map
 nil                                    ; maximum-shortest
 nil                                    ; overlay-plist
 nil                                    ; update-translation-function
 nil                                    ; conversion-keys
 t                                      ; simple
 )

(quail-define-rules
 ;; Unqualified rules
 ("::"                 ["∷"])
 ("forall"             ["∀"])
 ("exists"             ["∃"])
 ("->"                 ["→"])
 ("=>"                 ["⇒"])
 
 ;; Greek letters
 ("\\alpha"            ["α"])
 ("\\Alpha"            ["Α"])
 ("\\beta"             ["β"])
 ("\\Beta"             ["Β"])
 ("\\gamma"            ["γ"])
 ("\\Gamma"            ["Γ"])
 ("\\delta"            ["δ"])
 ("\\Delta"            ["Δ"])
 ("\\epsilon"          ["ε"])
 ("\\Epsilon"          ["Ε"])
 ("\\zeta"             ["ζ"])
 ("\\Zeta"             ["Ζ"])
 ("\\eta"              ["η"])
 ("\\Eta"              ["Η"])
 ("\\theta"            ["θ"])
 ("\\Theta"            ["Θ"])
 ("\\iota"             ["ι"])
 ("\\Iota"             ["Ι"])
 ("\\kappa"            ["κ"])
 ("\\Kappa"            ["Κ"])
 ("\\lambda"           ["λ"])
 ("\\Lambda"           ["Λ"])
 ("\\lamda"            ["λ"])
 ("\\Lamda"            ["Λ"])
 ("\\mu"               ["μ"])
 ("\\Mu"               ["Μ"])
 ("\\nu"               ["ν"])
 ("\\Nu"               ["Ν"])
 ("\\xi"               ["ξ"])
 ("\\Xi"               ["Ξ"])
 ("\\omicron"          ["ο"])
 ("\\Omicron"          ["Ο"])
 ("\\pi"               ["π"])
 ("\\Pi"               ["Π"])
 ("\\rho"              ["ρ"])
 ("\\Rho"              ["Ρ"])
 ("\\sigma"            ["σ"])
 ("\\Sigma"            ["Σ"])
 ("\\tau"              ["τ"])
 ("\\Tau"              ["Τ"])
 ("\\upsilon"          ["υ"])
 ("\\Upsilon"          ["Υ"])
 ("\\phi"              ["φ"])
 ("\\Phi"              ["Φ"])
 ("\\chi"              ["χ"])
 ("\\Chi"              ["Χ"])
 ("\\psi"              ["ψ"])
 ("\\Psi"              ["Ψ"])
 ("\\omega"            ["ω"])
 ("\\Omega"            ["Ω"])
 ("\\digamma"          ["ϝ"])
 ("\\Digamma"          ["Ϝ"])
 ("\\san"              ["ϻ"])
 ("\\San"              ["Ϻ"])
 ("\\qoppa"            ["ϙ"])
 ("\\Qoppa"            ["Ϙ"])
 ("\\sampi"            ["ϡ"])
 ("\\Sampi"            ["Ϡ"])
 ("\\stigma"           ["ϛ"])
 ("\\Stigma"           ["Ϛ"])
 ("\\heta"             ["ͱ"])
 ("\\Heta"             ["Ͱ"])
 ("\\sho"              ["ϸ"])
 ("\\Sho"              ["Ϸ"])

 ;; Fraktur letters
 ("\\fraka"            ["𝖆"])
 ("\\frakb"            ["𝖇"])
 ("\\frakc"            ["𝖈"])
 ("\\frakd"            ["𝖉"])
 ("\\frake"            ["𝖊"])
 ("\\frakf"            ["𝖋"])
 ("\\frakg"            ["𝖌"])
 ("\\frakh"            ["𝖍"])
 ("\\fraki"            ["𝖎"])
 ("\\frakj"            ["𝖏"])
 ("\\frakk"            ["𝖐"])
 ("\\frakl"            ["𝖑"])
 ("\\frakm"            ["𝖒"])
 ("\\frakn"            ["𝖓"])
 ("\\frako"            ["𝖔"])
 ("\\frakp"            ["𝖕"])
 ("\\frakq"            ["𝖖"])
 ("\\frakr"            ["𝖗"])
 ("\\fraks"            ["𝖘"])
 ("\\frakt"            ["𝖙"])
 ("\\fraku"            ["𝖚"])
 ("\\frakv"            ["𝖛"])
 ("\\frakw"            ["𝖜"])
 ("\\frakx"            ["𝖝"])
 ("\\fraky"            ["𝖞"])
 ("\\frakz"            ["𝖟"])
 ("\\frakA"            ["𝕬"])
 ("\\frakB"            ["𝕭"])
 ("\\frakC"            ["𝕮"])
 ("\\frakD"            ["𝕯"])
 ("\\frakE"            ["𝕰"])
 ("\\frakF"            ["𝕱"])
 ("\\frakG"            ["𝕲"])
 ("\\frakH"            ["𝕳"])
 ("\\frakI"            ["𝕴"])
 ("\\frakJ"            ["𝕵"])
 ("\\frakK"            ["𝕶"])
 ("\\frakL"            ["𝕷"])
 ("\\frakM"            ["𝕸"])
 ("\\frakN"            ["𝕹"])
 ("\\frakO"            ["𝕺"])
 ("\\frakP"            ["𝕻"])
 ("\\frakQ"            ["𝕼"])
 ("\\frakR"            ["𝕽"])
 ("\\frakS"            ["𝕾"])
 ("\\frakT"            ["𝕿"])
 ("\\frakU"            ["𝖀"])
 ("\\frakV"            ["𝖁"])
 ("\\frakW"            ["𝖂"])
 ("\\frakX"            ["𝖃"])
 ("\\frakY"            ["𝖄"])
 ("\\frakZ"            ["𝖅"])

 ;; Double-struck letters
 ("\\bbA"                ["𝔸"])
 ("\\bbB"                ["𝔹"])
 ("\\bbC"                ["ℂ"])
 ("\\bbD"                ["𝔻"])
 ("\\bbE"                ["𝔼"])
 ("\\bbF"                ["𝔽"])
 ("\\bbG"                ["𝔾"])
 ("\\bbH"                ["ℍ"])
 ("\\bbI"                ["𝕀"])
 ("\\bbJ"                ["𝕁"])
 ("\\bbK"                ["𝕂"])
 ("\\bbL"                ["𝕃"])
 ("\\bbM"                ["𝕄"])
 ("\\bbN"                ["ℕ"])
 ("\\bbO"                ["𝕆"])
 ("\\bbP"                ["ℙ"])
 ("\\bbQ"                ["ℚ"])
 ("\\bbR"                ["ℝ"])
 ("\\bbS"                ["𝕊"])
 ("\\bbT"                ["𝕋"])
 ("\\bbU"                ["𝕌"])
 ("\\bbV"                ["𝕍"])
 ("\\bbW"                ["𝕎"])
 ("\\bbX"                ["𝕏"])
 ("\\bbY"                ["𝕐"])
 ("\\bbZ"                ["ℤ"])
 ("\\bbgamma"            ["ℽ"])
 ("\\bbGamma"            ["ℾ"])
 ("\\bbpi"               ["ℼ"])
 ("\\bbPi"               ["ℿ"])

 ;; Types
 ("\\::"               ["∷"])

 ;; Quantifiers
 ("\\forall"           ["∀"])
 ("\\exists"           ["∃"])

 ;; Arrows
 ("\\->"               ["→"])
 ("\\-->"              ["⟶"])
 ("\\<-"               ["←"])
 ("\\<--"              ["⟵"])
 ("\\<->"              ["↔"])
 ("\\<-->"             ["⟷"])

 ("\\=>"               ["⇒"])
 ("\\==>"              ["⟹"])
 ("\\<="               ["⇐"])
 ("\\<=="              ["⟸"])
 ("\\<=>"              ["⇔"])
 ("\\<==>"             ["⟺"])

 ("\\[->"              ["↦"])
 ("\\[-->"             ["⟼"])
 ("\\<-|"              ["↤"])
 ("\\<--|"             ["⟻"])

 ("\\[=>"              ["⤇"])
 ("\\[==>"             ["⟾"])
 ("\\<=|"              ["⤆"])
 ("\\<==|"             ["⟽"])

 ("\\~>"               ["⇝"])
 ("\\~~>"              ["⟿"])
 ("\\<~"               ["⇜"])
 ("\\<~~"              ["⬳"])

 ("\\>->"              ["↣"])
 ("\\<-<"              ["↢"])
 ("\\->>"              ["↠"])
 ("\\<<-"              ["↞"])

 ("\\>->>"             ["⤖"])
 ("\\<<-<"             ["⬻"])

 ("\\<|-"              ["⇽"])
 ("\\-|>"              ["⇾"])
 ("\\<|-|>"            ["⇿"])

 ("\\<-/-"             ["↚"])
 ("\\-/->"             ["↛"])

 ("\\<-|-"             ["⇷"])
 ("\\-|->"             ["⇸"])
 ("\\<-|->"            ["⇹"])

 ("\\<-||-"            ["⇺"])
 ("\\-||->"            ["⇻"])
 ("\\<-||->"           ["⇼"])
 
 ("\\-o->"             ["⇴"])
 ("\\<-o-"             ["⬰"])

 ;; Boolean operators
 ("\\lnot"             ["¬"])
 ("\\land"             ["∧"])
 ("\\lor"              ["∨"])

 ;; Relational operators
 ("\\=="               ["≡"])
 ("\\/="               ["≢" "≠"])
 ("\\<="               ["≤"])
 ("\\>="               ["≥"])
 ("\\/<"               ["≮"])
 ("\\/>"               ["≯"])

 ;; Arithmetic
 ("\\div"              ["÷"])
 ("\\cdot"             ["⋅"])

 ;; Containers / Collections
 ("\\++"               ["⧺"])
 ("\\+++"              ["⧻"])
 ("\\empty"            ["∅"])
 ("\\elem"             ["∈"])
 ("\\notElem"          ["∉"])
 ("\\member"           ["∈"])
 ("\\notMember"        ["∉"])
 ("\\union"            ["∪"])
 ("\\intersection"     ["∩"])
 ("\\isSubsetOf"       ["⊆"])
 ("\\isProperSubsetOf" ["⊂"])

 ;; Other
 ("\\<<"               ["≪"])
 ("\\>>"               ["≫"])
 ("\\<<<"              ["⋘"])
 ("\\>>>"              ["⋙"])
 ("\\<|"               ["⊲"])
 ("\\|>"               ["⊳"])
 ("\\><"               ["⋈"])
 ("\\mempty"           ["∅"])
 ("\\mappend"          ["⊕"])
 ("\\<*>"              ["⊛"])
 ("\\."                ["∘"])
 ("\\undefined"        ["⊥"])
 ("\\:="               ["≔"])
 ("\\=:"               ["≕"])
 ("\\=def"             ["≝"])
 ("\\=?"               ["≟"])
 ("\\..."              ["…"])

 ;; Numeric subscripts
 ("\\_0"               ["₀"])
 ("\\_1"               ["₁"])
 ("\\_2"               ["₂"])
 ("\\_3"               ["₃"])
 ("\\_4"               ["₄"])
 ("\\_5"               ["₅"])
 ("\\_6"               ["₆"])
 ("\\_7"               ["₇"])
 ("\\_8"               ["₈"])
 ("\\_9"               ["₉"])

 ;; Numeric superscripts
 ("\\^0"               ["⁰"])
 ("\\^1"               ["¹"])
 ("\\^2"               ["²"])
 ("\\^3"               ["³"])
 ("\\^4"               ["⁴"])
 ("\\^5"               ["⁵"])
 ("\\^6"               ["⁶"])
 ("\\^7"               ["⁷"])
 ("\\^8"               ["⁸"])
 ("\\^9"               ["⁹"]))

(provide 'haskell-input-method)
;;; haskell-input-method.el ends here


