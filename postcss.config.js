const purgecss = require('@fullhuman/postcss-purgecss')

module.exports = {
    plugins: [
        purgecss({
            content: [
                './app/**/*.html.erb',
                './app/helpers/**/*.html.erb',
                './app/javascript/**/*.js'
            ]
        }),
        require('postcss-import'),
        require('postcss-flexbugs-fixes'),
        require('postcss-preset-env')({
            autoprefixer: {
                flexbox: 'no-2009'
            },
            stage: 3
        })
    ]
}
