
/* Tree specific JS -http://jsfiddle.net/jhfrench/GpdgF/*/

$(function () 
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
});

$(document).off('.data-api');

$(document).ready(function() 
{
    function removeItem(item)
    {
    	$(item).parent().parent().remove();
    }
    
    function addItem(itemVal)
    {
		//remove
		var removeI = $('<i></i>');
		removeI.addClass("glyphicon");
		removeI.addClass("glyphicon-remove");
	    $(removeI).click(function() 
	    {
	    	removeItem(removeI);
		});
	    //add
		var createI = $('<i></i>');
		createI.addClass("glyphicon");
		createI.addClass("glyphicon-plus");
	    $(createI).click(function() 
	    {
			$('#createItemModal').modal('toggle');
		});
		//label
		var actionlabel = $('<label></label>');
		actionlabel.append(removeI);		
		actionlabel.append(" ");
		actionlabel.append(createI);

		
	    //span
		var itemSpan = $('<span></span>');
		itemSpan.text(itemVal);

		//ul
		var childItemHolder = $('<ul></ul>');

    	//li
		var itemli = $('<li></li>');
		itemli.append(itemSpan);
		itemli.append(" ");
		itemli.append(actionlabel);
		itemli.append(childItemHolder);
		
		return itemli;
	}	
    
    $("#addItemBtn").click(function() 
    {
		var itemVal = $("#itemVal").val();
		$("#itemVal").val("");
		
		var newItem = addItem(itemVal);
		
		$("#itemHolder").append(newItem);
    });    
    
    var currentParent=null;
    
    $("#modalAddItemBtn").click(function() 
    {
		var modalItemVal = $("#modalItemVal").val();
		$("#modalItemVal").val("");
		
		var modalNewItem = addItem(modalItemVal);
		
		var ul = $(currentParent).parent().parent().find("ul")[0];

		
		$(ul).append(modalNewItem);
		
		$('#createItemModal').modal('toggle');
    });    
    
    $(".glyphicon-remove").click(function() 
    {
    	removeItem(this);
	});
    
    $(".glyphicon-plus").click(function() 
    {
		$('#createItemModal').modal('toggle');
		currentParent = this;
	});    
});
