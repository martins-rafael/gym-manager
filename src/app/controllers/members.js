const { age, date } = require('../../lib/utils')

module.exports = {
    index(req, res) {
        return res.render('members/index')
    },
    create(req, res) {
        return res.render('members/create')
    },
    post(req, res) {
        const keys = Object.keys(req.body)

        for (let key of keys) {
            if (req.body[key] == '')
                return res.send('Please, fill all fields')
        }

        let { avatar_url, name, birth, gender, services } = req.body

        return
    },
    show(req, res) {

        return res.render('members/show')
    },
    edit(req, res) {

        return res.render('members/edit')
    },
    put(req, res) {
        const keys = Object.keys(req.body)

        for (let key of keys) {
            if (req.body[key] == '')
                return res.send('Please, fill all fields')
        }

        let { avatar_url, name, birth, gender, services } = req.body

        return
    },
    delete(req, res) {
        return
    }
}
