// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import AutoSubmit from "./auto_submit_controller.js"
import AutoClick from "./auto_click_controller.js"

application.register('auto-submit', AutoSubmit)
application.register('auto-click', AutoClick)
eagerLoadControllersFrom("controllers", application)
