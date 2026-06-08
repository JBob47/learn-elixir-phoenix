# Lesson 05 - Pattern Matching with Lists

## Split a List

```elixir
[first | rest] = [1, 2, 3, 4]

first
# 1

rest
# [2, 3, 4]
```

`first` is the first item in the list.

`rest` is a list containing everything after the first item.

---

## Empty Lists

```elixir
[]
```

Represents an empty list.

Example:

```elixir
def empty?([]) do
  true
end
```

This function only matches an empty list.

---

## Pattern Matching in Function Arguments

```elixir
def first_item([first | _rest]) do
  first
end
```

Example:

```elixir
first_item(["Banner", "Sign", "Backdrop"])

# => "Banner"
```

---

## Ignoring Values

```elixir
[first | _rest]
```

The underscore indicates a value that exists but will not be used.

---

## Boolean Functions

Functions ending with `?` are expected to return `true` or `false`.

```elixir
empty?([])
# true
```

Examples:

```elixir
String.contains?("hello", "e")
Enum.empty?([])
```

---

## Key Takeaways

- `[first | rest]` splits a list into head and tail.
- `[]` matches an empty list.
- Pattern matching can be used in assignments and function arguments.
- `_variable` indicates an unused value.
- Functions ending in `?` typically return a boolean.