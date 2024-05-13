
import moment from "moment";
require("dotenv").config();
import * as doctorService from '../../services/doctorService';


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