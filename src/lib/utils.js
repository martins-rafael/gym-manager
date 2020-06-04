module.exports = {
    age(timestamp) {
        const today = new Date()
        const birthday = new Date(timestamp)

        let age = today.getFullYear() - birthday.getFullYear()
        const month = today.getMonth() - birthday.getMonth()

        if (month < 0 || month == 0 && today.getDate() < birthday.getDate()) {
            age -= 1
        }

        return age
    },
    date(timestamp) {
        const date = new Date(timestamp)
        const year = date.getUTCFullYear()
        const month = `0${date.getUTCMonth() + 1}`.slice(-2)
        const day = `0${date.getUTCDate()}`.slice(-2)

        return {
            iso: `${year}-${month}-${day}`,
            birthDay: `${day}/${month}`,
            format: `${day}/${month}/${year}`
        }
    },
    blood(blood) {
        const bloodType = {
            A1: 'A+',
            A0: 'A-',
            B1: 'B+',
            B0: 'B-',
            AB1: 'AB+',
            AB0: 'AB-',
            O1: 'O+',
            O0: 'O-'
        }

        return bloodType[blood]
    }
}