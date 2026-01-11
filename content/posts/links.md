---
title: Go Internals
date: 2026-01-03T13:26:50.526Z
tags:
- golang
categories:
- links
# See details front matter: https://fixit.lruihao.cn/documentation/content-management/introduction/#front-matter
comment: true
feed:
  limit: 10
  fullText: true
---
Go Internals - Links

<!--more-->

## Go Internals - Curated Links

This file consolidates the links from our conversation and groups them by topic/language.

## English - Official docs, specs, source, and design docs

- [golang/go Wiki](https://github.com/golang/go/wiki) - Official project wiki (docs, guides, internals notes).
- [The Go Programming Language Specification](https://go.dev/ref/spec) - The spec; semantics that drive many “internals”.
- [The Go Memory Model](https://go.dev/ref/mem) - Happens-before and visibility guarantees.
- [A Tour of Go](https://go.dev/tour/) - Interactive tour (baseline).
- [How to Write Go Code](https://go.dev/doc/code) - Canonical project layout & tooling.
- [Effective Go](https://go.dev/doc/effective_go) - Idioms and best practices.
- [golang/go (source)](https://github.com/golang/go) - The Go toolchain + runtime source.
- [LearnConcurrency (Go Wiki)](https://github.com/golang/go/wiki/LearnConcurrency) - Concurrency learning resources (official wiki page).
- [CodeReviewComments (Go Wiki)](https://github.com/golang/go/wiki/CodeReviewComments) - Official review guidelines.
- [Compiler and Runtime Optimizations (Go Wiki)](https://go.dev/wiki/CompilerOptimizations) - Flags and notes for inlining/escape/optimizations.

## English - Runtime & scheduler (G/M/P, stacks)

- [runtime/HACKING.md](https://github.com/golang/go/blob/master/src/runtime/HACKING.md) - Runtime concepts and how runtime code differs from “normal Go”.
- [runtime/proc.go](https://go.dev/src/runtime/proc.go) - Scheduler implementation entry point.
- [Scalable Go Scheduler (Vyukov design doc)](https://docs.google.com/document/d/1TTj4T2JO42uD5ID9e89oa0sLKhJYD0Y_kqxDv3I3XMw) - Core design notes behind the scheduler.
- [Go's work-stealing scheduler](https://rakyll.org/scheduler/) - Work-stealing + GMP model overview.
- [The Go scheduler](https://morsmachine.dk/go-scheduler) - Deep dive into the scheduler.
- [Scheduling in Go: Part II](https://www.ardanlabs.com/blog/2018/08/scheduling-in-go-part2.html) - Practical deep dive into scheduler behavior.
- [How stacks are handled in Go](https://blog.cloudflare.com/how-stacks-are-handled-in-go/) - Stack growth mechanics (Cloudflare).
- [Illustrated Tales of Go Runtime Scheduler](https://medium.com/@ankur_anand/illustrated-tales-of-go-runtime-scheduler-74809ef6d19b) - Visual walkthrough of scheduling.

## English - Memory allocator & memory management

- [runtime/malloc.go](https://go.dev/src/runtime/malloc.go) - Allocator source (mcache/mcentral/mheap, size classes).
- [A visual guide to Go memory allocator](https://blog.ankuranand.com/2019/02/20/a-visual-guide-to-golang-memory-allocator-from-ground-up/) - Visual, source-oriented allocator deep dive.
- [Go’s Memory Allocator - Overview (pt.1)](https://andrestc.com/post/go-memory-allocation-pt1/) - Series about Go allocations/runtime.
- [Visualizing memory management in Golang](https://deepu.tech/memory-management-in-golang/) - Memory/GC details with visuals.
- [Go Memory Management](https://povilasv.me/go-memory-management/) - OS/VM/heap interactions; practical perspective.
- [Inside Go - Part 2: Memory Management](https://furkankolcu.com/post/inside-go-part-2-memory-management-in-go) - Stack/heap, escape analysis, runtime nuances.
- [Go Runtime Internals: Goroutine Scheduling and Stack Growth](https://medium.com/@sanyamdubey28/go-runtime-internals-goroutine-scheduling-and-stack-growth-17a251c6c5a7) - Scheduling + stack growth (overview + examples).

## English - Garbage collector (GC)

- [A Guide to the Go Garbage Collector](https://go.dev/doc/gc-guide) - Official GC guide for advanced users.
- [The Green Tea Garbage Collector](https://go.dev/blog/greenteagc) - Official article on ongoing GC improvements.
- [Go GC: Prioritizing low latency and simplicity](https://go.dev/blog/go15gc) - Historical foundations of modern Go GC.
- [Getting to Go: The Journey of Go’s Garbage Collector](https://go.dev/blog/ismmkeynote) - Keynote transcript from the Go team.
- [Garbage Collection in Go: Part I](https://www.ardanlabs.com/blog/2018/12/garbage-collection-in-go-part1-semantics.html) - Semantics and fundamentals.
- [Write barriers in the Go garbage collector](https://ihagopian.com/posts/write-barriers-in-the-go-garbage-collector) - Write barrier mechanics.
- [Understanding Go’s Garbage Collector](https://rugu.dev/en/blog/understanding-go-gc/) - Practical + conceptual GC explanation.
- [Go Garbage Collection: a Journey](https://blog.amitkarnam.com/go-garbage-collection-a-journey-through-memory-management) - Overview of tri-color and invariants.
- [Understanding Garbage Collection in Go](https://www.dingyuqi.com/en/article/go-garbage-collection/) - GC internals and phases.

## English - Channels, netpoller, networking internals, timers

- [runtime/chan.go](https://go.dev/src/runtime/chan.go) - Channel implementation source.
- [Go Channels: A Runtime Internals Deep Dive](https://blog.gaborkoos.com/posts/2025-08-26-Go-Channels-A-Runtime-Internals-Deep-Dive/) - hchan internals, queues, parking.
- [Gist of Go: Concurrency internals](https://antonz.org/go-concurrency/internals/) - Practical “under the hood” concurrency notes.
- [Diving deep into the golang channels](https://blog.ankuranand.com/2018/09/29/diving-deep-into-the-golang-channels/) - send/recv/buffering behavior details.
- [The Go netpoller](https://morsmachine.dk/netpoller.html) - How Go maps async I/O to goroutine blocking.
- [runtime/netpoll.go](https://go.dev/src/runtime/netpoll.go) - Netpoll core implementation.
- [runtime/netpoll_epoll.go](https://go.dev/src/runtime/netpoll_epoll.go) - Linux epoll backend.
- [Go Netpoller and Runtime Behavior](https://alexanderobregon.substack.com/p/go-netpoller-and-runtime-behavior) - Netpoll behavior + park/unpark.
- [How Go Handles Networking](https://goperf.dev/02-networking/networking-internals/) - pollDesc + netpoll integration explained.
- [Understanding epoll, kqueue, and netpoll in Go](https://dzone.com/articles/go-servers-understanding-epoll-kqueue-netpoll) - OS event loops → Go netpoll mapping.
- [Go internals: HTTP request multiplexing in Go](https://akshay-kumar.hashnode.dev/go-internals-http-request-multiplexing-in-go-1) - HTTP concurrency internals.
- [How Do They Do It: Timers in Go](https://blog.gopheracademy.com/advent-2016/go-timers/) - Timer internals.
- [Timers and Heap Buckets in Go Runtime](https://alexanderobregon.substack.com/p/timers-and-heap-buckets-in-go-runtime) - Modern timer internals.

## English - Maps & slices internals

- [runtime/map_noswiss.go](https://go.dev/src/runtime/map_noswiss.go) - Pre-swiss map implementation (source).
- [Macro View of Map Internals In Go](https://www.ardanlabs.com/blog/2013/12/macro-view-of-map-internals-in-go.html) - Buckets, overflow, growth.
- [Go Maps Explained](https://victoriametrics.com/blog/go-map/) - hmap, evacuation, load factor.
- [Visual Guide to Go Maps: Hash Tables](https://sazak.io/articles/visual-guide-to-go-maps-hash-tables-2025-10-26) - Visual deep dive.
- [Maps internals in Go](https://blog.bullgare.com/2023/09/maps-internals-in-go/) - Growth/evacuation details.
- [Go Map Internals and Why Ordering Isn't Stable](https://medium.com/@AlexanderObregon/go-map-internals-and-why-ordering-isnt-stable-69551a7582c8) - Ordering and incremental growth.
- [A Deep Dive into Slice and Map Expansion in Go](https://leapcell.io/blog/a-deep-dive-into-slice-and-map-expansion-in-go) - Growth strategies + perf impacts.
- [Map internals in Go 1.24](https://themsaid.com/map-internals-go-1-24) - Swiss Table-inspired redesign (Go 1.24).
- [Go Slices: usage and internals](https://go.dev/blog/slices-intro) - Official slices mental model.
- [Go internals: invariance and memory layout of slices](https://eli.thegreenplace.net/2021/go-internals-invariance-and-memory-layout-of-slices/) - Slice layout + invariance.
- [Go Slice: Lightweight Data Structure, Window to Memory](https://themsaid.com/slice-internals-in-go) - Slice internals overview.
- [Slices in Go: Grow Big or Go Home](https://victoriametrics.com/blog/go-slice/) - Append/growth cost model.

## English - Interfaces internals

- [runtime/iface.go](https://go.dev/src/runtime/iface.go) - Interface dispatch structures (source).
- [Go interfaces deep dive](https://tul.github.io/2018/07/23/go-interfaces-deep-dive.html) - iface/eface layout and costs.
- [Go Data Structures: Interfaces (Russ Cox)](https://research.swtch.com/2009/12/go-data-structures-interfaces.html) - Classic explanation of interface representation.
- [Golang interface brief look](https://www.henrydu.com/2021/02/07/golang-interface-brief-look/) - Source-based interface explanation.
- [Things You Never Wanted To Know About Go (ABI)](https://mcyoung.xyz/2024/12/12/go-abi/) - ABI details (useful for “how calls work”).
- [The Hidden World of Go Interface Values](https://leapcell.io/blog/unveiling-the-mechanisms-the-hidden-world-of-go-interface-values) - Interface value mechanics.
- [Interfaces in Go (Go101)](https://go101.org/article/interface.html) - Extensive encyclopedia-style reference.

## English - sync.Mutex, semaphores, starvation

- [Dissecting Golang sync.Mutex](https://medium.com/gett-engineering/dissecting-golang-sync-mutex-a07c0cec0b31) - Lock/Unlock mechanics and waiters.
- [runtime/sema.go](https://github.com/golang/go/blob/master/src/runtime/sema.go) - Runtime semaphores used by sync.
- [Go sync.Mutex: Normal and Starvation Mode](https://victoriametrics.com/blog/go-sync-mutex/) - Fairness modes and symptoms.
- [Mutex starvation in Go](https://hidetatz.github.io/go_mutex_starvation/) - Starvation mechanics and history.
- [What could Go wrong with a mutex, or the Go profiling story](https://evilmartians.com/chronicles/what-could-go-wrong-with-a-mutex-or-the-go-profiling-story) - Case study + profiling workflow.

## English - Compiler, SSA/IR, generics implementation, ABI, assembler, linker

- [Introduction to the Go compiler (cmd/compile/README)](https://go.dev/src/cmd/compile/README) - Official compiler pipeline map.
- [Understanding the Go compiler (series)](https://internals-for-interns.com/series/understanding-the-go-compiler/) - Step-by-step internal series.
- [Understanding the Go Compiler: The Unified IR Format](https://internals-for-interns.com/posts/go-compiler-unified-ir/) - Unified IR deep dive.
- [Go compiler internals: adding a new statement to Go (Part 1)](https://eli.thegreenplace.net/2019/go-compiler-internals-adding-a-new-statement-to-go-part-1/) - Practical compiler hacking series.
- [Hacking Go Compiler Internals (slides)](https://speakerdeck.com/moriyoshi/hacking-go-compiler-internals-2nd-season) - Compiler pipeline/inlining/escape slides.
- [A Quick Guide to Go's Assembler](https://go.dev/doc/asm) - Go asm + tooling.
- [Generics implementation - Stenciling](https://go.googlesource.com/proposal/+/master/design/generics-implementation-stenciling.md) - Design doc.
- [Generics implementation - Dictionaries (Go 1.18)](https://go.googlesource.com/proposal/+/master/design/generics-implementation-dictionaries-go1.18.md) - Real implementation approach.
- [Generics can make your Go code slower](https://planetscale.com/blog/generics-can-make-your-go-code-slower) - Perf considerations.
- [The generics implementation of Go 1.18](https://deepsource.com/blog/go-1-18-generics-implementation) - Dictionary-based implementation explained.
- [Go 1.17 Release Notes](https://go.dev/doc/go1.17) - Toolchain changes including ABI updates.
- [Go internal ABI specification (abi-internal)](https://go.dev/src/cmd/compile/abi-internal) - ABIInternal spec.
- [Register-based calling convention (design doc)](https://go.googlesource.com/proposal/+/master/design/40724-register-calling.md) - Motivation & rules.
- [cmd/compile: switch to a register-based calling convention (issue #40724)](https://github.com/golang/go/issues/40724) - Historical hub for the change.
- [RISC-V Bytes: Go 1.19's Register-Based Calling Convention](https://danielmangum.com/posts/risc-v-bytes-go-1-19-register-calling/) - Practical ABI explanation.
- [Fixing Go's Linker (Uber)](https://www.uber.com/blog/fixing-gos-linker/) - Linker internals case study.

## English - Tracing & profiling (pprof/trace)

- [gotraceui (repo)](https://github.com/dominikh/gotraceui) - Execution trace UI.
- [Gotraceui manual](https://gotraceui.dev/manual/latest/) - Manual + runtime interpretation via traces.
- [Profiling Go programs with pprof](https://jvns.ca/blog/2017/09/24/profiling-go-with-pprof/) - Practical pprof guide.
- [Custom pprof profiles](https://rakyll.org/custom-profiles/) - Extending profiling.
- [profilinggo (repo)](https://github.com/samonzeweb/profilinggo) - Benchmarking/profiling/tracing cookbook.

## English - Style, practice, and “build things” (from your example set)

- [Ultimate Go Tour](https://tour.ardanlabs.com/) - Interactive tour-style training.
- [Red Hat Go topic hub](https://developers.redhat.com/topics/go) - Articles from Red Hat experts.
- [OWASP Go Secure Coding Practices Guide (project)](https://owasp.org/www-project-go-secure-coding-practices-guide/) - Secure coding practices in Go.
- [OWASP/Go-SCP (repo)](https://github.com/OWASP/Go-SCP) - Source repository for Go-SCP.
- [uber-go/guide style.md](https://github.com/uber-go/guide/blob/master/style.md) - Widely used Go style guide.
- [Exercism Go track](https://exercism.org/tracks/go) - Practice exercises.
- [CodeCrafters](https://codecrafters.io/) - “Build your own X” style challenges.
- [build-your-own-x (repo)](https://github.com/codecrafters-io/build-your-own-x) - Project list for recreating systems.
- [Building a BitTorrent client from the ground up in Go](https://jse.li/posts/torrent/) - Real system reimplementation in Go.

---

## 中文 - Go internals (runtime / GC / compiler / datastructures)

- [Go 语言调度器与 Goroutine 实现原理（Draveness）](https://draven.co/golang/docs/part3-runtime/ch06-concurrency/golang-goroutine/) - Scheduler + goroutines (source-level).
- [Go 语言 Channel 实现原理精要（Draveness）](https://draven.co/golang/docs/part3-runtime/ch06-concurrency/golang-channel/) - Channel internals.
- [Go 语言垃圾收集器的实现原理（Draveness）](https://draven.co/golang/docs/part3-runtime/ch07-memory/golang-garbage-collector/) - GC internals.
- [Go 语言内存分配器的实现原理（Draveness）](https://draven.co/golang/docs/part3-runtime/ch07-memory/golang-memory-allocator/) - Allocator internals.
- [Go 语言的栈内存和逃逸分析（Draveness）](https://draven.co/golang/docs/part3-runtime/ch07-memory/golang-stack-management/) - Stack + escape analysis.
- [理解 Golang 哈希表 Map 的原理（Draveness）](https://draven.co/golang/docs/part2-foundation/ch03-datastructure/golang-hashmap/) - Map internals.
- [Go 语言接口的原理（Draveness）](https://draven.co/golang/docs/part2-foundation/ch04-basic/golang-interface/) - Interface representation.
- [深度解密调度器源码系列（qcrao）](https://qcrao.com/post/dive-into-go-scheduler-source-code/) - Scheduler code reading series.
- [深度解密 Go 语言之 scheduler（qcrao）](https://qcrao.com/post/dive-into-go-scheduler/) - Scheduler deep dive.
- [描述 scheduler 的初始化过程（码农桃花源 / qcrao）](https://qcrao91.gitbook.io/go/goroutine-tiao-du-qi/miao-shu-scheduler-de-chu-shi-hua-guo-cheng) - Scheduler init process.
- [map（码农桃花源 / qcrao）](https://qcrao91.gitbook.io/go/map) - Map internals section.
- [map 的底层实现原理是什么（码农桃花源 / qcrao）](https://qcrao91.gitbook.io/go/map/map-de-di-ceng-shi-xian-yuan-li-shi-shi-mo) - How maps work underneath.
- [map 的扩容过程是怎样的（码农桃花源 / qcrao）](https://qcrao91.gitbook.io/go/map/map-de-kuo-rong-guo-cheng-shi-zen-yang-de) - Map growth details.
- [iface 和 eface 的区别是什么（码农桃花源 / qcrao）](https://qcrao91.gitbook.io/go/interface/iface-he-eface-de-qu-bie-shi-shi-mo) - iface vs eface.
- [接口的构造过程是怎样的（码农桃花源 / qcrao）](https://qcrao91.gitbook.io/go/interface/jie-kou-de-gou-zao-guo-cheng-shi-zen-yang-de) - Interface construction.
- [深度解密 Go 语言之 channel（cnblogs / qcrao）](https://www.cnblogs.com/qcrao-2018/p/11220651.html) - Channel internals.
- [聊聊 g0（cnblogs / qcrao）](https://www.cnblogs.com/qcrao-2018/p/14287892.html) - g0 discussion.
- [详解 Go 语言调度循环源码实现（luozhiyun）](https://www.luozhiyun.com/archives/448) - Scheduler loop deep dive.
- [Go 语言 GC 实现原理及源码分析（luozhiyun）](https://www.luozhiyun.com/archives/475) - GC source analysis.
- [Go 的 GC 原理图解（dingyuqi）](https://www.dingyuqi.com/article/3zn8kkv3/) - Visual GC explanation.
- [Golang 中 channel 实现原理源码分析（cfanbo）](https://cfanbo.github.io/archives/20760/) - Channel source reading.
- [源码解析 Golang 的 map 实现原理（cfanbo）](https://cfanbo.github.io/archives/20420/) - Map source reading.
- [深入分析 Go1.18 Channel 底层原理（腾讯云开发者社区）](https://cloud.tencent.com/developer/article/2126558) - Channel internals (Go 1.18-era).
- [[Go 原理] 详解 interface（imageslr）](https://imageslr.com/2019/11/12/go-underlying-interface-detail.html) - Interface internals.
- [通过实例理解 Go 静态单赋值（SSA）（Tony Bai）](https://tonybai.com/2022/10/21/understand-go-ssa-by-example/) - SSA explained with examples.

---

## 日本語 - Go internals (runtime / GC / compiler / SSA)

- [並行処理を支える Go ランタイム（Zenn / hsaki）](https://zenn.dev/hsaki/books/golang-concurrency/viewer/gointernal) - Runtime for concurrency.
- [チャネルの内部構造（Zenn / hsaki）](https://zenn.dev/hsaki/books/golang-concurrency/viewer/chaninternal) - Channel internals.
- [Go におけるメモリ管理の可視化（Zenn / kazu1029）](https://zenn.dev/kazu1029/articles/38ab3d99ef0de3) - Visual memory management.
- [Golang のスケジューラあたりの話（Qiita / takc923）](https://qiita.com/takc923/items/de68671ea889d8df6904) - Scheduler discussion.
- [スケジューラから学ぶ Go ランタイム（Go Conference 2021 Autumn）](https://gocon.jp/2021autumn/sessions/go-scheduling/) - Conference session page.
- [スケジューラから学ぶ Go ランタイム（SpeakerDeck）](https://speakerdeck.com/sakiengineer/sukeziyurakaraxue-bugorantaimu-code-reading-of-runtime-pkg) - Slides for runtime reading.
- [Go の GC を追う（deeeet）](https://deeeet.com/writing/2016/05/08/gogc-2016/) - GC deep dive notes.
- [Go の GC などで見かける 3 色マーキング（Qiita / taxio）](https://qiita.com/taxio/items/d863be7f5ced16f783c3) - Tri-color marking.
- [Go 言語のガベージコレクションについて学んでみた（every.tv tech blog）](https://tech.every.tv/entry/2025/11/05/201814) - GC study notes.
- [Go 実行バイナリのメモリ管理（Qiita / 7shi）](https://qiita.com/7shi/items/510653e0c0e28411cc9d) - Binary/memory management notes.
- [Memory management in Go（SpeakerDeck / ymotongpoo）](https://speakerdeck.com/ymotongpoo/memory-management-in-go) - Memory management talk.
- [memory allocator とやらを調べる（Zenn Scrap / nasa）](https://zenn.dev/nasa/scraps/f1d0c658f177fb) - Allocator investigation notes.
- [runtime/malloc.goを読む（Zenn Scrap / nasa）](https://zenn.dev/nasa/scraps/f2f0f595b1371d) - Reading malloc.go.
- [Go runtime の内部実装を覗きながら、チャンネルのことを知る（Qiita / zreactor）](https://qiita.com/zreactor/items/1cef0c7ba31aac5402bb) - Channel internals via runtime reading.
- [Go 言語の Channel：完全解説（note / Leapcell）](https://note.com/leapcell/n/n7a5353ac08a7) - Channel complete explanation.
- [【Go】Map の内部構造と O(1) のメカニズム（Zenn / smartshopping）](https://zenn.dev/smartshopping/articles/5df9c3717e25bd) - Map internals.
- [Go の SSA 最適化制御オプション（Qiita / tooru）](https://qiita.com/tooru/items/a55bcdac0500d9a93f39) - SSA optimization controls.
- [静的単一代入（SSA）（Zenn / tenntenn）](https://zenn.dev/tenntenn/books/d168faebb1a739/viewer/2edb6d) - SSA overview.
- [the Go compiler の README 日本語訳（nybeyond）](https://blog.nybeyond.com/learning/go-compile-readme/) - Japanese translation/notes for compiler README.
- [Go コンパイラのお勉強（2）~インライン化とエスケープ解析（TechTouch）](https://tech.techtouch.jp/entry/go-compiler-study-inline-escape-analysis) - Inlining + escape analysis.
- [【Go】エスケープ処理とその解析（Ren / はてな）](https://rennnosukesann.hatenablog.com/entry/2020/02/15/000000) - Escape analysis notes.
- [Golang エスケープ解析（note / kyfk）](https://note.com/kyfk/n/n56a2e2ef77f6) - Escape analysis article.
- [Go の並行・並列処理モデルと goroutine スケジューリング（bmf-tech）](https://bmf-tech.com/posts/Go%E3%81%AE%E4%B8%A6%E8%A1%8C%E3%83%BB%E4%B8%A6%E5%88%97%E5%87%A6%E7%90%86%E3%83%A2%E3%83%87%E3%83%AB%E3%81%A8goroutine%E3%82%B9%E3%82%B1%E3%82%B8%E3%83%A5%E3%83%BC%E3%83%AA%E3%83%B3%E3%82%B0) - Concurrency model + scheduling.
- [Go の interface と Generics の内部構造と進化（Go Conference 2025）](https://gocon.jp/2025/talks/951608/) - Conference talk page.
- [Go インターフェース値の隠された世界（Leapcell 日本語）](https://leapcell.io/blog/ja/go-intafeesu-zhi-no-yin-cang-sareta-shi-jie-meqanizumu-no-jie-kai) - Interface value mechanisms.
