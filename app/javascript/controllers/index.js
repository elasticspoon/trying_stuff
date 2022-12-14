// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AlertController from "./alert_controller"
application.register("alert", AlertController)

import CounterController from "./counter_controller"
application.register("counter", CounterController)

import GreeterController from "./greeter_controller"
application.register("greeter", GreeterController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import InputLengthController from "./input_length_controller"
application.register("input-length", InputLengthController)

import NestedFormController from "./nested_form_controller"
application.register("nested-form", NestedFormController)

import ToggleController from "./toggle_controller"
application.register("toggle", ToggleController)
