$(document).ready(function() 
{
    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
    
    $('.tree li.parent_li > span').on('click', function (e) 
    {
        var children = $(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) 
        {
            children.hide('fast');
            $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
        } 
        else 
        {
            children.show('fast');
            $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
        }
        e.stopPropagation();
    });
    
    
    $(".glyphicon-remove").click(function() 
    {
    	removeItem(this);
	});
    
    $(".glyphicon-plus").click(function() 
    {
		var newItem = addItem("new item");
		
		var ul = $(this).parent().find("ul")[0];
		
		$(ul).append(newItem);
	});
    
    function removeItem(item)
    {
    	$(item).parent().remove();
    }
    
    function addItem(itemVal)
    {
		var itemli = $('<li></li>');
		
		var removeI = $('<i></i>');
		removeI.addClass("glyphicon");
		removeI.addClass("glyphicon-remove");
	    $(removeI).click(function() 
	    {
	    	removeItem(removeI);
		});
		
		var createI = $('<i></i>');
		createI.addClass("glyphicon");
		createI.addClass("glyphicon-plus");
	    $(createI).click(function() 
	    {
	    	alert("clicked!");
			var newItem = addItem("new item");
			
			var ul = $(createI).parent().find("ul")[0];
			
			$(ul).append(newItem);			
		});
	    
		var itemSpan = $('<span></span>');
		itemSpan.text(itemVal);

		var childItemHolder = $('<ul></ul>');

		itemli.append(itemSpan);
		itemli.append(" ");
		itemli.append(removeI);
		itemli.append(" ");
		itemli.append(createI);
		itemli.append(childItemHolder);
		
		return itemli;
	}
    
    $("#addItemBtn").click(function() 
    {
		var itemVal = $("#addItemTxt").val();
		$("#addItemTxt").val("");
		
		var newItem = addItem(itemVal);
		
		$("#itemList").append(newItem);
    });
    
});

//http://jsfiddle.net/jhfrench/GpdgF/