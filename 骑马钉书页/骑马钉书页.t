//开始按钮_点击操作
function start_click()
    var page = editgettext("edit0")
    var i = page / 4
//    traceprint(i)
    if(int(page)%4 == 0)
        var p = 0
        var p1 = ""
        for(var pi = i; pi > 0; pi--)
            if(p1 == "")
                p1 = page-p
            else
                p1 = p1 & "," & (page-p)
            end
            p1 = p1 & "," & (p+1)
            p = p+2
        end
        var n = 0
        var p2 = ""
        for(var pi = i; pi > 0; pi--)
            if(p2 == "")
                p2 = 2+n
            else
                p2 = p2 & "," & (2+n)
            end
            p2 = p2 & "," & (page-1-n)
            n = n+2
        end
//        traceprint(p1)
//        traceprint(p2)
        editsettext("edit1",p1)
        editsettext("edit2",p2)
    else
        messagebox("您输入的页数不能排序,请输入4的倍数")
    end
end

//退出按钮_点击操作
function exit_click()
    
    exit()
end