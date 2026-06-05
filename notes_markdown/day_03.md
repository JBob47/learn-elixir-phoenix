# Day 3 - Lists, Maps, and Enum

## Lists

A list is an ordered collection of values.

```elixir
items = [
  "Lobby Banner",
  "Step & Repeat",
  "Wayfinding Sign"
]
```

Useful functions:

```elixir
hd(items)      # First item
tl(items)      # Everything except first item
length(items)  # Number of items
Enum.at(items, 1)  # Item at index 1
```

---

## Maps

Maps store data using keys.

```elixir
item = %{
  name: "Lobby Banner",
  quantity: 2
}
```

Access values:

```elixir
item.name
item.quantity
```

---

## Tuples

Tuples group related values together.

```elixir
{:ok, "proof.pdf"}
```

Often used to indicate success or failure:

```elixir
{:ok, result}
{:error, reason}
```

---

## Immutability

Data cannot be changed.

Instead, create a new version:

```elixir
updated_item = %{item | quantity: 5}
```

The original map stays the same.

---

## Pipe Operator

Passes the result from one step to the next.

```elixir
item
|> String.trim()
|> String.upcase()
```

Read it top to bottom:

1. Trim
2. Uppercase

---

## Enum

Enum contains tools for working with collections.

### Count

```elixir
Enum.count(items)
```

Returns the number of items.

---

### Map

```elixir
Enum.map(items, fn item ->
  String.upcase(item)
end)
```

Transforms each item and returns a new list.

---

### Filter

```elixir
Enum.filter(items, fn item ->
  String.contains?(item, "Banner")
end)
```

Keeps only matching items.

---

### Each

```elixir
Enum.each(items, fn item ->
  IO.puts(item)
end)
```

Performs an action for each item.

Returns:

```elixir
:ok
```

---

## Key Takeaways

* Lists store collections of values.
* Maps store values by key.
* Tuples are often used for success/error results.
* Data is immutable.
* Pipes make code easier to read.
* `Enum.count` counts items.
* `Enum.map` transforms items.
* `Enum.filter` keeps matching items.
* `Enum.each` performs actions.
