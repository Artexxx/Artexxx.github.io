---
title: About
date: 2026-01-03T16:00:00+03:00
comment: false
twemoji: false
lightgallery: false
typeit: true
---

{{< center-quote >}}
Stay humble without shrinking. Stay confident without showing off. Keep your focus, keep your pace.\
Don’t feed anger, don’t chase noise, don’t cling to pride — improve quietly and consistently.

_— A personal commitment_
{{< /center-quote >}}

## About the author

I’m **Artexxx**, a software developer with **3+ years of commercial experience**.

I started my career as a freelancer, delivering projects for a variety of clients and learning how to take ownership from idea to production. Today, I work at **Ozon Tech**, where I design and build **high-load distributed systems** in the **Identity & Access Management (IAM)** domain.

My core expertise is building backend services in **Go**, with a focus on **microservice architecture** and reliable communication patterns. In production I regularly work with **gRPC**, **Kafka**, and **PostgreSQL**, and I pay close attention to scalability, observability, and failure modes.

Over time I’ve gained practical experience with modern architectural patterns such as the **outbox pattern** and **event sourcing**, as well as database design, query optimization, and monitoring. I value strong engineering culture: I actively participate in code reviews, architectural discussions, and knowledge sharing, and I prefer solutions that are both clean and operationally safe.

I adapt quickly to new tasks and technologies, take full ownership of deliverables, and aim for predictable, high-quality execution.

## About this blog

This blog is my place for notes and write-ups on software engineering: system design, Go, distributed systems, PostgreSQL, messaging, and anything else I’m exploring. I also publish practical guides, experiments, and occasional reflections on learning and building products.

If you’d like to follow updates, you can subscribe via **GitHub** or **RSS**.

{{< style "min-height: 350px;" >}}
{{< typeit code=golang speed=20 class="terminal" cursorChar="█" >}}
// High-load IAM • Go microservices • gRPC • Kafka • PostgreSQL
func main() {
  blog, err := NewBlog().
    Name("Artexxx Blog").
    Author("Artexxx").
    URL("https://artexxx.github.io").
    Focus(
      "Identity & Access Management",
      "High-load distributed systems",
      "Observability, reliability, and DDD",
    ).
    Stack("Go", "gRPC", "Kafka", "PostgreSQL").
    Since(time.Date(2026, 1, 3, 0, 0, 0, 0, time.UTC)).
    Build()
}
{{< /typeit >}}
{{< /style >}}

---
