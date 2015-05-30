module.exports = (grunt) ->

  grunt.loadNpmTasks("grunt-contrib-coffee")
  grunt.loadNpmTasks("grunt-contrib-watch")
  grunt.loadNpmTasks("grunt-newer")

  grunt.initConfig
    coffee:
      dist:
        files:
          'hello.js': ['hello/*.coffee']
          'world.js': ['world/*.coffee']
    watch:
      options:
        spawn: false
      files: ["**/*.coffee"]
      tasks: ["newer:coffee"]

  grunt.registerTask "default", "watch"
