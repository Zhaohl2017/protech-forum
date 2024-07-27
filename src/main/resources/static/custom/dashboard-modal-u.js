$(document).ready(function() {
	
	var selectedUserId;
	
	$(".editUserButton").click(function(event){
        event.preventDefault();
        var userId = $(this).data('user-id');
        openUserEditModel(userId);
    })
    
    function openUserEditModel(userId) {
        getJson(userId);
        $("#userEditModal").modal();
    }
	
	function getJson(userId) {
		$.getJSON("../user/" + userId + "/json", function(json){
			fillForm(json);
		});
	}
	
	function fillForm(user) {
		$.each(user, function(key, value) {
            
            if (key == "userId" && null != value) {
                $(".modal-body #userId").val(value);
            }

            if (key == "userName" && null != value) {
                $(".modal-body #userName").val(value);
            }
            
            if (key == "email" && null != value) {
                $(".modal-body #email").val(value);
            }
            
            if (key == "activated" && null != value) {
                $(".modal-body #activated").val(value);
            }

			if (key == "dateCreated" && null != value) {
                $(".modal-body #dateCreated").val(value);
            }

			if (key == "bio" && null != value) {
                $(".modal-body #bio").val(value);
            }

			if (key == "roles" && null != value) {
                $(".modal-body #roles").val(value);
            }
        });
	}
	
	//////////////////////////////
	// delete user business logic
	
	$(".deleteUserButton").click(function(event){
        event.preventDefault();
        var userId = $(this).data('user-id');
        var userUsername = $(this).data('user-username');
		var userEmail = $(this).data('user-email');
        var userDate = $(this).data('user-date');
        $(".modal-body #userId").text("User ID: " + userId);
        $(".modal-body #userUsername").text("Publisher: " + userUsername);
        $(".modal-body #userDate").text("Publish Date: " + userDate);
        $(".modal-body #userEmail").text("Email: " + userEmail);
        selecteduserId = userId;
        $("#userDeleteModal").modal();
    })

    $("#confirmDeleteUserButton").click(function(even){
    		event.preventDefault();
    		if (null != selecteduserId) {
    			deleteUser(selecteduserId);
    		}
    })
    
    function deleteUser(userId) {
		$.ajax({
			url: "user/" + userId, 
			type: "DELETE",
			error: function(xhr, status) {
					showMessageModal(false, "Delete Failed!", "Delete user (ID: " + userId + ") failed.");
				},
			success: function(result) {
					showMessageModal(true, "Delete Successful!", "Delete user (ID: " + userId + ") successfully.");
				}
		});
	}
	
	function showMessageModal(success, strongText, messageText) {
		if (success) {
			$("#userMessageModal #messageText").addClass("alert-success");
		} else {
			$("#userMessageModal #messageText").addClass("alert-danger");
		}
		$("#userMessageModal #strongText").text(strongText);
		$("#userMessageModal #messageText").text(messageText);
		$("#userMessageModal").modal();
	}
	
	// refresh current page
	$(".refreshCurrPage").click(function(event){
		console.log("refreshCurrPage");
		location.reload();
	})

});