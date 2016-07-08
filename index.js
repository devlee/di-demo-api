var koa = require('koa');

var json = require('koa-json');

var Router = require('koa-router');

var app = new koa();

var router = new Router();

router.get('/demo/data', function(ctx, next) {
  ctx.body = {a: 'b'};
});

app.use(router.routes()).use(router.allowedMethods());

app.listen('6688', function () {
  console.log('api running at port 6688');
});