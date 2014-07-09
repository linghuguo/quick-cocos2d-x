 local webview = require("webview")
    
    local WebViewTest = class("WebViewTest", function()
        return display.newNode()
    end)
    function WebViewTest:ctor()
        self:_showUI()
        self:_test()
    end
    function WebViewTest:_test()
        webview.setActivityName("us/t1201/testplayer/Testplayer")
        print("getActivityName:", webview.getActivityName())
    end
    function WebViewTest:_showUI()
        local __menu = ui.newMenu({
            ui.newTTFLabelMenuItem(
            {
                text="show(http://zengrong.net, 20,20,1000,500)",
                listener = function()
                    webview.show("http://zengrong.net", 20,20, 1000, 500)
                end
            }),
            ui.newTTFLabelMenuItem(
            {
                text="show(http://zhihu.com, 0,0,500,300)",
                listener = function()
                    webview.show("http://zhihu.com", 0,0, 500, 300)
                end
            }),
            ui.newTTFLabelMenuItem(
            {
                text="show(http://github.com)",
                listener = function()
                    webview.show("http://github.com")
                end
            }),
            ui.newTTFLabelMenuItem(
            {
                text="remove()",
                listener = function()
                    webview.remove()
                end
            }),
        })
            :addTo(self)
            :pos(display.cx,display.bottom+100)
        __menu:alignItemsVertically()
    end
    return WebViewTest