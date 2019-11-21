const db = require('../data/dbConfig');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}


function find() {
    return db("schemes").then(schemes => {
        return schemes
    })
}

function findById(id) {
    return db("schemes").where({id}).first()
}

function findSteps(id) {
    return db("schemes as sch").join("steps as s")
    .select("sch.scheme_name", "s.step_number", "s.instructions")
    .where('scheme_id', id)
}

function add(scheme) {
    return db("schemes as sch").insert(scheme)

}

function update(changes, id) {
    return db("schemes as sch").where({id}).update(changes)
}

function remove(id) {
    return db("schemes").where({id}).delete()
}