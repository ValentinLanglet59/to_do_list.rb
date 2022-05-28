require_relative 'Repository'
require_relative 'Controller'
require_relative 'router'

repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run