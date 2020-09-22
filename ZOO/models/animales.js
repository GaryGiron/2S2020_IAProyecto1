const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const pageSchema= new Schema({
    nombre:String,
    carnet:String,
    dpi:Number,
    semestre:Number,
    anio:Number,
    grupo:String,
    correo:String
});

module.exports=mongoose.model('students',pageSchema);