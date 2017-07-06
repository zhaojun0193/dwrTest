package com.zhaojun.serverlet.push;

import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.proxy.dwr.Util;

import java.util.Collection;

/**
 * Created by hasee on 2017/7/5.
 */
public class DwrPush {

    public void send(){
        //获取scriptSession
        WebContext webContext = WebContextFactory.get();
        Collection<ScriptSession> scriptSessions = webContext.getAllScriptSessions();
        ScriptBuffer scriptBuffer = new ScriptBuffer();
        //拼装脚本  调用回调方法
        scriptBuffer.appendScript("callback(");
        scriptBuffer.appendScript("'xxxxxx'");
        scriptBuffer.appendScript(")");
        System.out.println(scriptBuffer);
        //用util调用
        Util util = new Util(scriptSessions);
        util.addScript(scriptBuffer);
    }
}
