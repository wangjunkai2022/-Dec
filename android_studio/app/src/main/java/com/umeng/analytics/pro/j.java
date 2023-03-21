package com.umeng.analytics.pro;

import com.apk.Cgoto;

/* compiled from: UMLogAnalytics.java */
/* loaded from: classes7.dex */
public class j {
    public static final String A = "MobclickAgent.setSecret方法参数secretkey不能为null，也不能为空字符串。|secretkey参数必须是非空 字符串。";
    public static final String B = "统计SDK常见问题索引贴 详见链接 http://developer.umeng.com/docs/66650/cate/66650";
    public static final String H = "检测到进入页面生命周期时尚未完成SDK初始化，请检查是否未在Application.onCreate函数中执行SDK初始化函数。";
    public static final String N = "MobclickAgent.onDeepLinkReceived方法Context参数不能为null。|参数Context需要指定ApplicationContext值。";
    public static final String O = "MobclickAgent.onDeepLinkReceived方法link参数不能为null，也不能为空字符串。|参数link必须为非空字符串。";
    public static final String P = "MobclickAgent.onDeepLinkReceived方法link参数长度超过限制。|参数link长度不能超过1024字符。";
    public static final String ar = "请在Application.onCreate函数中使用UMConfigure.preInit函数初始化友盟sdk";
    public static final String z = "MobclickAgent.setSecret方法参数context不能为null|参数Context需要指定ApplicationContext值。";

    /* renamed from: a  reason: collision with root package name */
    public static final String f12204a = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合参数为空|onEvent接口必须传入非空的属性集合。详见问题链接 "));
    public static final String b = Cgoto.m1001goto("66946", Cgoto.m1016super("事件ID和保留字冲突|onEvent接口传入的事件ID不能和保留字冲突。详见问题链接 "));
    public static final String c = Cgoto.m1001goto("66946", Cgoto.m1016super("事件ID为null或者为空字符串|onEvent接口传入的事件ID不能为null，也不能为空字符串。详见问题链接 "));
    public static final String d = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合map没有加入K-V值|事件属性集合参数map必须添加K-V值。详见问题链接 "));
    public static final String e = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合map中key值和保留字冲突|事件属性集合map中key值不能和保留字冲突。详见问题链接 "));
    public static final String f = Cgoto.m1001goto("66946", Cgoto.m1016super("事件ID为null或者长度超过限制|事件ID不能为null、空串，且长度不能超过128个字符。详见问题链接 "));
    public static final String g = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合参数为空或者事件属性集合map没有加入K-V值|事件属性集合参数map必须添加K-V值。详见问题链接 "));
    public static final String h = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合map中key非法|事件属性集合参数map中key不能为非法的。详见问题链接 "));
    public static final String i = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合map中value为null|事件属性集合参数map中value不能为null。详见问题链接 "));
    public static final String j = Cgoto.m1001goto("66946", Cgoto.m1016super("事件属性集合map中value长度超过限制|事件属性集合参数map中value如果为字符串时，其长度不能超过256个字符。详见问题链接 "));
    public static final String k = Cgoto.m1001goto("66946", Cgoto.m1016super("事件标签为null或者为空字符串|onEvent接口传入的事件标签不能为null，也不能为空字符串。详见问题链接 "));
    public static final String l = Cgoto.m1001goto("66946", Cgoto.m1016super("事件ID为null或者长度超过限制，或事件标签长度超过限制|事件ID不能为null、空串，且长度不能超过128个字符。事件标签长度不能超过256个字符。详见问题链接 "));
    public static final String m = Cgoto.m1001goto("66946", Cgoto.m1016super("事件ID和保留字冲突|onEvent接口传入的事件ID不能和保留字冲突。详见问题链接 "));
    public static final String n = Cgoto.m1001goto("66948", Cgoto.m1016super("MobclickAgent.onResume接口参数不能为null|MobclickAgent.onResume接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String o = Cgoto.m1001goto("66948", Cgoto.m1016super("MobclickAgent.onResume接口参数不是Activity的上下文|MobclickAgent.onResume接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String p = Cgoto.m1001goto("66948", Cgoto.m1016super("MobclickAgent.onPause接口参数不能为null|MobclickAgent.onPause接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String q = Cgoto.m1001goto("66948", Cgoto.m1016super("MobclickAgent.onPause接口参数不是Activity的上下文|MobclickAgent.onPause接口参数应该传入当前Activity的上下文。详见问题链接 "));
    public static final String r = Cgoto.m1001goto("66948", Cgoto.m1016super("@ 遗漏了Mobclick.onResume函数调用|每个Activity的onResume中都必须调用MobclickAgent.onResume。详见问题链接 "));
    public static final String s = Cgoto.m1001goto("66948", Cgoto.m1016super("@ 遗漏了Mobclick.onPaused函数调用|每个Activity的onPaused中都必须调用MobclickAgent.onPaused。详见问题链接 "));
    public static final String t = Cgoto.m1001goto("66951", Cgoto.m1016super("MobclickAgent.onProfileSignIn接口参数 账号ID 不能为null|账号ID不能为空。详见问题链接 "));
    public static final String u = Cgoto.m1001goto("66951", Cgoto.m1016super("MobclickAgent.onProfileSignIn接口参数 账号ID 长度超过限制|账号ID 长度不能超过64个字符。详见问题链接 "));
    public static final String v = Cgoto.m1001goto("66951", Cgoto.m1016super("MobclickAgent.onProfileSignIn接口参数 账号来源 长度超过限制|账号来源 长度不能超过32个字符。详见问题链接 "));
    public static final String w = Cgoto.m1001goto("66971", Cgoto.m1016super("MobclickAgent.reportError方法参数context不能为null|参数Context需要指定ApplicationContext值。详见问题链接 "));
    public static final String x = Cgoto.m1001goto("66971", Cgoto.m1016super("MobclickAgent.reportError方法参数error不能为null，也不能为空字符串。|error参数必须是非空字符串。详见问题链接 "));
    public static final String y = Cgoto.m1001goto("66971", Cgoto.m1016super("MobclickAgent.reportError方法 Context和Throwable参数都不能为空。|参数Context需要指定ApplicationContext值，Throwable参数传入捕获到的异常对象。详见问题链接 "));
    public static final String C = Cgoto.m1001goto("66975", Cgoto.m1016super("MobclickAgent.onPageStart方法参数不能为null，也不能为空字符串。|参数viewName必须为非空字符串。详见链接 "));
    public static final String D = Cgoto.m1001goto("66975", Cgoto.m1016super("MobclickAgent.onPageEnd方法参数不能为null，也不能为空字符串。|参数viewName必须为非空 字符串。详见链接 "));
    public static final String E = Cgoto.m1001goto("66975", Cgoto.m1016super("对于页面@，onPageStart和onPageEnd调用对的参数不一致。|对于同一个页面，请先调用onPageStart，再调用onPageEnd。详见链接 "));
    public static final String F = Cgoto.m1001goto("66975", Cgoto.m1016super("对于页面@，请确保先依序成对调用onPageStart，onPageEnd接口，再调用onPageStart接口对其它页面进行统计。|对于任意一个页面，必须依序成对调用onPageStart以及onPageEnd，不能有遗漏。详见链接 "));
    public static final String G = Cgoto.m1001goto("66975", Cgoto.m1016super("对于页面@，请检查是否遗漏onPageStart接口调用。|对于任意一个页面，必须依序成对调用onPageStart以及onPageEnd，不能有遗漏。详见链接 "));
    public static final String I = Cgoto.m1001goto("66976", Cgoto.m1016super("当前发送策略为：启动时发送。详见链接 "));
    public static final String J = Cgoto.m1001goto("66976", Cgoto.m1016super("当前发送策略为: 间隔发送。间隔时间为：@秒。详见链接 "));
    public static final String K = Cgoto.m1001goto("66976", Cgoto.m1016super("当前发送策略为: 集成测试。但是SDK未切换到调试模式，所以后台设置未生效。|如想切换到集成测试发送策略，请调用UMConfigure.setLogEnabled(true)将SDK切换到调试模式。详见链接 "));
    public static final String L = Cgoto.m1001goto("66976", Cgoto.m1016super("当前发送策略为：集成测试。详见链接 "));
    public static final String M = Cgoto.m1001goto("66976", Cgoto.m1016super("当前发送策略为: 准实时发送。间隔时间为：@秒。详见链接 "));
    public static final String Q = Cgoto.m1001goto("66978", Cgoto.m1016super("发送数据时发生java.net.UnknownHostException异常|友盟后端对设备端证书验证失败。请确保设备端没有运行抓包代理类程序。详见链接 "));
    public static final String R = Cgoto.m1001goto("66978", Cgoto.m1016super("发送数据时发生javax.net.sslHandshakeException异常|导致友盟后端域名解析失败。请检查系统DNS服务器配置是否正确。详见链接 "));
    public static final String S = Cgoto.m1001goto("67310", Cgoto.m1016super("track接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String T = Cgoto.m1001goto("67310", Cgoto.m1016super("registerSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String U = Cgoto.m1001goto("67310", Cgoto.m1016super("unregisterSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String V = Cgoto.m1001goto("67310", Cgoto.m1016super("getSuperProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接: "));
    public static final String W = Cgoto.m1001goto("67310", Cgoto.m1016super("getSuperProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String X = Cgoto.m1001goto("67310", Cgoto.m1016super("clearSuperProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String Y = Cgoto.m1001goto("67310", Cgoto.m1016super("setFirstLaunchEvent接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String Z = Cgoto.m1001goto("67310", Cgoto.m1016super("registerPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String aa = Cgoto.m1001goto("67310", Cgoto.m1016super("unregisterPreProperty接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ab = Cgoto.m1001goto("67310", Cgoto.m1016super("clearPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ac = Cgoto.m1001goto("67310", Cgoto.m1016super("getPreProperties接口调用非法。|当前处于非DPLUS场景中，不能使用DPLUS相关接口，详见问题连接："));
    public static final String ad = Cgoto.m1001goto("67311", Cgoto.m1016super("eventName为空，请检查|eventName参数不能为空，详见问题连接："));
    public static final String ae = Cgoto.m1001goto("67311", Cgoto.m1016super("请注意：map为空|track接口的参数说明，详见问题连接："));
    public static final String af = Cgoto.m1001goto("67312", Cgoto.m1016super("context参数为空｜context参数不能为空，详见问题连接："));
    public static final String ag = Cgoto.m1001goto("67312", Cgoto.m1016super("propertyName参数或propertyValue参数为空｜propertyName、propertyValue参数不能为空，详见问题连接："));
    public static final String ah = Cgoto.m1001goto("67313", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ai = Cgoto.m1001goto("67316", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
    public static final String aj = Cgoto.m1001goto("67318", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ak = Cgoto.m1001goto("67318", Cgoto.m1016super("trackID参数为空|trackID参数不能为空，详见问题连接："));
    public static final String al = Cgoto.m1001goto("67319", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
    public static final String am = Cgoto.m1001goto("67319", Cgoto.m1016super("propertics参数为空|propertics参数不能为空，详见问题连接："));
    public static final String an = Cgoto.m1001goto("67320", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
    public static final String ao = Cgoto.m1001goto("67320", Cgoto.m1016super("未匹配到您传入的property参数|property参数不能匹配，"));
    public static final String ap = Cgoto.m1001goto("67321", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
    public static final String aq = Cgoto.m1001goto("67322", Cgoto.m1016super("context参数为空|context参数不能为空，详见问题连接："));
}
