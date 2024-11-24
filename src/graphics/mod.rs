use std::rc::Rc;

use miniquad::RenderingBackend;

pub type Backend = Rc<dyn RenderingBackend>;