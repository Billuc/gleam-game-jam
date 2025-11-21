import lustre
import lustre/attribute as attr
import lustre/effect
import lustre/element
import lustre/element/html

type Model {
  Model
}

type Msg {
  Msg
}

pub fn main() -> Nil {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_args: Nil) -> #(Model, effect.Effect(Msg)) {
  #(Model, effect.none())
}

fn update(model: Model, msg: Msg) -> #(Model, effect.Effect(Msg)) {
  todo
}

fn view(model: Model) -> element.Element(Msg) {
  html.canvas([attr.id("my-canvas")])
}
