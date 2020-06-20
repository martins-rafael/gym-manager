const { date } = require('../../lib/utils')
const db = require('../../config/db')

module.exports = {
    all(callback) {
        db.query(`
        SELECT instructors.*, count(members) AS total_students 
        FROM instructors
        LEFT JOIN members ON (members.instructor_id = instructors.id)
        GROUP BY instructors.id
        ORDER BY total_students DESC`, function (err, results) {
            if (err) throw `Database error! ${err}`

            callback(results.rows)
        })
    },
    create(data, callback) {
        const query = `
        INSERT INTO instructors (
            name,
            avatar_url,
            gender,
            services,
            birth,
            created_at
        ) VALUES ($1, $2, $3, $4, $5, $6)
        RETURNING id
    `

        const values = [
            data.name,
            data.avatar_url,
            data.gender,
            data.services,
            date(data.birth).iso,
            date(Date.now()).iso
        ]

        db.query(query, values, function (err, results) {
            if (err) throw `Database error! ${err}`

            callback(results.rows[0])
        })
    },
    find(id, callback) {
        db.query(`
            SELECT *
            FROM instructors
            WHERE id = $1`, [id], function (err, results) {
            if (err) throw `Database error! ${err}`

            callback(results.rows[0])
        })
    },
    findBy(filter, callback) {
        db.query(`
        SELECT instructors.*, count(members) AS total_students
        FROM instructors
        LEFT JOIN members ON (members.instructor_id = instructors.id)
        WHERE instructors.name ILIKE '%${filter}%'
        OR instructors.services ILIKE '%${filter}%'
        GROUP BY instructors.id
        ORDER BY total_students`, function (err, results){
            if (err) throw `Database error! ${err}`

            callback(results.rows)
        })
    },
    update(data, callback) {
        const query = `
        UPDATE instructors SET
            name=($1),
            avatar_url=($2),
            gender=($3),
            services=($4),
            birth=($5)
        WHERE id = $6
        `

        const values = [
            data.name,
            data.avatar_url,
            data.gender,
            data.services,
            date(data.birth).iso,
            data.id
        ]

        db.query(query, values, function (err, results) {
            if (err) throw `Database error! ${err}`

            callback()
        })
    },
    delete(id, callback) {
        db.query(`DELETE FROM instructors WHERE id = $1`, [id], function (err, results) {
            if (err) throw `Database error! ${err}`

            callback()
        })
    }
}