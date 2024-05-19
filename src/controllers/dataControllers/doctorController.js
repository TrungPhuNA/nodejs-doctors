
import moment from "moment";
require("dotenv").config();
import * as doctorService from '../../services/doctorService';
import * as patientService from '../../services/patientService';


exports.showDoctor = async  (req, res)=>{
    try{

        let currentDate = moment().format('DD/MM/YYYY');
        let sevenDaySchedule = [];
        for (let i = 0; i < 5; i++) {
            let date = moment(new Date()).add(i, 'days').locale('en').format('dddd - DD/MM/YYYY');
            sevenDaySchedule.push(date);
        }
        let object = await doctorService.getDoctorWithSchedule(req.params.id, currentDate);
        let places = await doctorService.getPlacesForDoctor();
        let postDoctor = await doctorService.getPostForDoctor(req.params.id);
		
        res.status(200).json({
			status: "success",
			data: {
				doctor: object.doctor,
				sevenDaySchedule: sevenDaySchedule,
				postDoctor: postDoctor,
				specialization: object.specialization,
				places: places,
				clinic: object.clinic
			}
		});
    }catch (e) {
		res.status(500).json({
			status: "error",
			message: e?.message
		});
    }
};



exports.bookingData = async  (req, res)=>{
    try{

		let item = req.body;
        if (item.places === 'none' || !item.places) {
            item.placeId = 1;
        }else {
            item.placeId = item.places;
        }
		/*statusId :
		 	5: đăng ký khám chưa có bsi
		/ 6: hủy đăng ký
		*/
		item.statusId = 4;
		if(item.dateBooking) {
			item.dateBooking = moment(item.dateBooking).format('DD/MM/yyyy')
		}
		
        item.createdAt = Date.now();
        console.log('-------------- booking data: ', item);
        let patient = await patientService.bookingData(item);
        res.status(200).json({
			status: "success",
			data: {
				patient: patient,
			}
		});
    }catch (e) {
		console.log("booking----------> ", e);
		res.status(500).json({
			status: "error",
			message: "Booking fail"
		});
    }
};