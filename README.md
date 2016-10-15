# Loops With Friends

[Loops With Friends] is a collaborative music-making web app built with [Elixir]/[Phoenix], [Elm], and the [WebAudio API].

See these [blog][Back End Part I] [posts][Back End Part II] for more on how it's built.

## Development

1. [Install] Elixir, Phoenix, and dependencies.

1. Clone and `cd` into the repository.
  ```shell
  git clone https://github.com/jeffcole/loops_with_friends.git
  cd loops_with_friends
  ```

1. Install Elixir dependencies.
  ```shell
  mix deps.get
  ```

1. Create the database.
  ```shell
  mix ecto.create
  ```

1. Install asset dependencies.
  ```shell
  npm install
  ```

1. Install Elm packages.
  ```shell
  cd web/static/elm
  ../../../node_modules/.bin/elm-package install
  cd ../../..
  ```

1. Run the server.
  ```shell
  mix phoenix.server
  ```

1. Visit `http://localhost:4000` in the browser.

## Testing

Run the test suite with `mix test`.

## License

Copyright © 2016 Jeff Cole. See [LICENSE](LICENSE) for more information.

[Loops With Friends]: http://www.loopswithfriends.com/
[Elixir]: http://elixir-lang.org/
[Phoenix]: http://www.phoenixframework.org/
[Elm]: http://elm-lang.org/
[WebAudio API]: https://webaudio.github.io/web-audio-api/
[Back End Part I]: http://jeff-cole.com/blog/collaborative-music-loops-in-elixir-and-elm-the-back-end-part-1/
[Back End Part II]: http://jeff-cole.com/blog/collaborative-music-loops-in-elixir-and-elm-the-back-end-part-2/
[Install]: http://www.phoenixframework.org/docs/installation
