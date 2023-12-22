var request = require('supertest');
var app = require('../index.js');
describe('GET /will', function() {
    it('respond with Welcome', function(done) {
        request(app).get('/will').expect('{ "response": "Welcome" }', done);
    });
});
