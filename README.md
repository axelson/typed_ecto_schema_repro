This is a reproduction for the many_to_many compile-time dep issue mentioned in https://github.com/bamorim/typed_ecto_schema/issues/38#issuecomment-2240066353

This project was generated with

```
mix phx.new many
mix phx.gen.schema User users name:string email:string
mix phx.gen.schema Book books name:string
mix phx.gen.schema BookReview book_reviews book_id:integer review:string
```

Then in 76b3ab47be4376bc2e1aed6e978b5c0e983d951f I add the `many_to_many` (along with the matching `mix xref --format dot` output)
- In this commit two runtime deps are added (as expected)

In 76b3ab47be4376bc2e1aed6e978b5c0e983d951f I add `typed_ecto_schema` and the compile dep on `lib/many/book.ex` becomes a compile-time dep
