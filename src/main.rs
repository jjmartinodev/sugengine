use graphics::Backend;
use miniquad::{conf::Conf, EventHandler};
use mlua::Lua;

pub struct App {
    ctx: Backend,
}

mod graphics;
mod script;

impl EventHandler for App {
    fn draw(&mut self) {}
    fn update(&mut self) {}
}

fn main() {
    let lua = Lua::new();

    

    // miniquad::start(Conf::default(), || {
    //     Box::new({
    //         App {
    //             ctx: miniquad::window::new_rendering_backend().into(),
    //         }
    //     })
    // });
}
