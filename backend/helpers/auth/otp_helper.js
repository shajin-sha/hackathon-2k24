const axios = require('axios');


const sendOTP = async (phone) => {
    try {
        // Generate OTP (random 4 digit number)
        let otp = Math.floor(1000 + Math.random() * 9000);
        await axios.get(`https://2factor.in/API/V1/69b66530-fad9-11ed-addf-0200cd936042/SMS/+91${phone}/${otp}/AbbaOTP`);
        return true;
    } catch (error) {
        return false;
    }
}


const verifyOTP = async (phone, otp) => {
    try {
        console.log(phone, otp)
        const response = await axios.get(`https://2factor.in/API/V1/69b66530-fad9-11ed-addf-0200cd936042/SMS/VERIFY3/+91${phone}/${otp}`);
        if (response.data.Status === "Success") {
            return true;
        } else {
            return false
        }
    } catch (error) {
        return false;
    }
}


module.exports = {
    sendOTP,
    verifyOTP
}