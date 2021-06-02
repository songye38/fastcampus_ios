const mongodb = require('mongodb');
const mogoose = require('mongoose');

let mongodbDatabase;
let UserSchema;
let UserModel;

function connectDB(){
	let databaseUrl = 'mongodb://localhost:27017/local';

	mongoose.connect(databaseUrl);
	mongodbDatabase.mongoose.connection;

	mongodbDatabase.on('error',console.error.bind(console,'mongoose connection error'));
	mongodbDatabase.on('open',function(){
		createUserSchema();
		doTest();
	});
	mongodbDatabase.on('disconnected',connectDB);
}

function createUserSchema(){
	UserSchema = mongoose.Schema({
		id : {type : String, required : true, unique : true},
		name : {type : String, index : 'hashed', 'default':''},
		age : {type : Number, 'default':-1},
		created_at : {type : Date, index : {unique : false},'default': Date.now},
		updated_at : {type : Date, index : {unique : false}, 'default':Date.now},
	});

	UserSchema
		.virtual('info')
		.set(function(info){
			let splitted = info.split(' ');
			this.id = splitted[0];
			this.name = splitted[1];
			console.log('virtual info 설정함 %s, %s', this.id, this.name);
		})
		.get(function(){return this.id+ ' '+this.name});
	console.log("UserSchema 정의함");

	UserModel = mongoose.model("user4",UserSchema);
	console.log("UserModel 정의함");
}

function doTest(){
	let user = new UserModel({"info":'test01 소녀시대'});

	user.save(function(err){
		if(err){throw err;}
		console.log("사용자 데이터 추가함");
		findAll();
	});

	console.log("info 속성에 값 할당함");
	console.log('id : %s, name : %s', user.id, user.name);
}    