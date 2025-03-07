" Vim syntax file
" Language:	ArkTS
" Maintainer:	Niujie
" Last Change:	2025 March 7


" quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

"Inherit TypeScript basic syntax (ensure TypeScript plugin is installed)
runtime! syntax/typescript.vim

"Variables and constants
syntax keyword arktsKeyword let const var
highlight link arktsKeyword Keyword

"Types
syntax keyword arktsType string number boolean void null undefined any unknown
syntax match arktsType /$type\|interface\|enum$/
highlight link arktsType Type

"Process control
syntax keyword arktsConditional if else
syntax keyword arktsRepeat for while do
highlight link arktsConditional Conditional
highlight link arktsRepeat Repeat

"class and object
syntax keyword arktsClassKeyword class constructor new extends
syntax keyword arktsAccessModifier public private protected
highlight link arktsClassKeyword Structure
highlight link arktsAccessModifier StorageClass

"Decorator
syntax match arktsDecorator /@\<\w\+\>/ contains=@NoSpell
syntax keyword arktsDecorator @Entry @Component @State @Prop @Link @BuilderParam nextgroup=arktsDecoratorParam skipwhite
highlight link arktsDecorator Decorator

"Module
syntax keyword arktsModule export import as
highlight link arktsModule Include

"Special characters
syntax match arktsOperator /|/
syntax match arktsOperator /:>/
highlight link arktsOperator Operator



let b:current_syntax = "arkts"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2 ts=8 noet:
