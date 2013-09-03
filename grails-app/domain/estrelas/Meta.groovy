package estrelas

class Meta {

	String name
	String description
	Date createdDate
	Date dueDate
	Date completedDate
	String priority
	String status
	User owner
	
	static belongsTo = [User]
	
	static constraints = {
	 name(blank:false)
	 createdDate()
	 priority()
	 status()
	 description (maxSize:1000, nullable:true)
	 completedDate(nullable:true)
	 dueDate(nullable:true)
	 }
	
	 String toString() {
	 name
	 }
	

}
