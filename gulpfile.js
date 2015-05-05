var gulp = require('gulp');
var mocha = require('gulp-mocha');

gulp.task('mocha', function() {
    return gulp.src('test/*.js', {
        read: false
    }).pipe(mocha({
        reporter: 'list'
    }));
});

gulp.task('watch', function() {
    gulp.watch([
        'src/*.js',
        'test/*.js'
    ], ['mocha']);

    gulp.watch([
        './src/*.html',
        './src/*.css',
        './src/*.js'
    ], ['deploy']);
});

gulp.task('deploy', function() {
    gulp.src([
        './src/*.html',
        './src/*.css',
        './src/*.js'
    ]).pipe(gulp.dest('./pub/'));
});
