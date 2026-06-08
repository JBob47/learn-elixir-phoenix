# Lesson 04 - Enum & Collection Transformations

## Enum.map

Transforms each item and returns a new list.

```elixir
Enum.map([1, 2, 3], fn number ->
  number * 2
end)

# => [2, 4, 6]
```

## Enum.filter

Keeps only items that match a condition.

```elixir
Enum.filter([1, 2, 3, 4, 5], fn number ->
  number > 3
end)

# => [4, 5]
```

## Enum.each

Performs an action for each item and returns `:ok`.

```elixir
Enum.each(["Banner", "Sign"], fn item ->
  IO.puts(item)
end)

# => :ok
```

## Pipe Operator

Chains operations together.

```elixir
files
|> Enum.filter(fn file ->
  String.ends_with?(file, ".pdf")
end)
|> Enum.map(fn file ->
  String.upcase(file)
end)
```

## Key Takeaways

* `map` = transform items
* `filter` = keep matching items
* `each` = perform actions
* Pipes (`|>`) make data flow easy to read
* Enum functions return new data; original data is unchanged

```
```
