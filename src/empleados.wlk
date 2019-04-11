object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var property sueldo = 0
	var dineroTotal=0
	var deuda=0
	method sueldo(){sueldo=15000 return sueldo}
	method cambiarSueldo(nuevoValor){sueldo = nuevoValor}
	
	method cobrarSueldo(){
		if(deuda>0){
			var cuantoCancelar=self.sueldo().min(deuda)
			var cuantoGuardar=self.sueldo()-cuantoCancelar
			deuda-=cuantoCancelar
			dineroTotal+=cuantoGuardar}
		else{dineroTotal+=cuantoGuardar}
	}	
	method gastar(cuanto){dineroTotal-=cuanto}
	method deudaTotal(){return deuda}
	method dineroTotal(){return dineroTotal}
}
object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15	
	var totalCobrado=0
	method venderEmpanada() {
		cantidadEmpanadasVendidas +=1 }
	method sueldo(){
		return cantidadEmpanadasVendidas*montoPorEmpanada}
	method cobrarSueldo(){
		totalCobrado+= self.sueldo()}
	method totalCobrado(){
		return totalCobrado}
}
object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()}
}
