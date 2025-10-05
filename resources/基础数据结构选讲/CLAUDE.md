# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Chinese tutorial on fundamental data structures written by 李昊泽 (Chumeng). The project contains educational materials covering stack and queue data structures with examples, problems, and solutions.

## Document Structure

- `基础数据结构选讲.md` - Main tutorial content in Markdown format
- `slide.tex` - Beamer presentation slides for the tutorial
- `README.md` - Basic project description
- `pic/` - Directory containing images/diagrams used in the tutorial

## Build System

This project uses LaTeX with XeLaTeX for compilation:

### Commands
- `latexmk` - Build the presentation slides (configured via `latexmkrc`)
- `xelatex slide.tex` - Manual compilation of slides
- `latexmk -c` - Clean auxiliary files

### LaTeX Configuration
- Uses `beamer` document class for presentations
- Custom HIT style packages (`hit-style.sty`, `hit-extra.sty`)
- XeLaTeX with shell escape enabled for minted code highlighting
- Chinese font support configured

## Content Organization

The tutorial covers:
1. **Stacks (栈)**
   - LIFO principles with real-world examples (plate stacking)
   - Implementation in C++ (both C-style arrays and STL)
   - Problems: bracket matching, postfix expressions
   - Advanced topic: monotonic stacks

2. **Queues (队列)**
   - FIFO principles with real-world examples (queueing)
   - Implementation methods (circular arrays, STL)
   - Problems: Josephus problem
   - Advanced topic: monotonic queues

Each section includes theoretical explanations, code examples, and practice problems from platforms like LeetCode, Luogu, and HDOJ.

## File Notes

- Images are generated using Gemini AI and stored in `pic/`
- Code examples use modern C++ practices and STL containers
- Mathematical notation is properly formatted using LaTeX
- The tutorial is written in Chinese with technical English terms where appropriate