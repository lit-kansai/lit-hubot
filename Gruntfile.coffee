module.exports = (grunt) ->
  grunt.initConfig
    coffeelint:
      app:
        files:
          src: ['scripts/*.coffee']
        options:
          force: true
          max_line_length:
            level: 'ignore'
    watch:
      coffee:
        files: 'scripts/*.coffee'
        tasks: ['coffeelint']

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffeelint', 'watch']
