	function Update(mem_id){
		document.update.mem_id.value=mem_id;
		document.update.submit();
	}


//product 

	function Admin_ProductDetail(no) {
		document.detail.no.value=no;
		document.detail.submit();
	}

	function Admin_productDelete(id) {
		document.del.id.value=id;
		document.del.submit();
	}

	function Admin_productUpdate(no){
		document.update.no.value=no;
		document.update.submit();
	}


//order

	function orderDetail(no){
		document.detail.no.value=no;
		document.detail.submit();	
	}
	
	function orderUpdate(form){
		form.flag.value="update"
		form.submit();
	}
	
	function orderDelete(form) {
		form.flag.value="delete";
		form.submit();
	}
	

//order end