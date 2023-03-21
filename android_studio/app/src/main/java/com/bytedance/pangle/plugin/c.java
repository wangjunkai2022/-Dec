package com.bytedance.pangle.plugin;

import androidx.annotation.NonNull;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.b.b;
import com.bytedance.pangle.g;
import com.bytedance.pangle.log.ZeusLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final g f11352a = g.a();

    public final boolean a(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        if (plugin == null) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, plugin == null, pkg = ".concat(String.valueOf(str)));
            return false;
        }
        synchronized (plugin) {
            if (!plugin.isInstalled()) {
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, UN_INSTALLED, ".concat(String.valueOf(str)));
                return false;
            } else if (plugin.isLoaded()) {
                return true;
            } else {
                f11352a.a(2000, 0, plugin.mPkgName, plugin.getVersion(), null);
                com.bytedance.pangle.log.b a2 = com.bytedance.pangle.log.b.a(ZeusLogger.TAG_LOAD, "PluginLoader", "loadPlugin:".concat(String.valueOf(str)));
                a(com.bytedance.pangle.b.b.g, b.a.z, plugin.mPkgName, plugin.getVersion(), -1L, null);
                ZeusPluginStateListener.postStateChange(str, 8, new Object[0]);
                StringBuilder sb = new StringBuilder();
                boolean a3 = a(str, plugin, sb);
                a2.b("loadPluginInternal:".concat(String.valueOf(a3)));
                if (a3) {
                    plugin.setLifeCycle(3);
                    a(com.bytedance.pangle.b.b.h, b.a.A, plugin.mPkgName, plugin.getVersion(), a2.a(), sb.toString());
                    ZeusPluginStateListener.postStateChange(str, 9, new Object[0]);
                    f11352a.a(ZeusPluginEventCallback.EVENT_FINISH_LOAD, 0, plugin.mPkgName, plugin.getVersion(), null);
                } else {
                    sb.append("plugin:");
                    sb.append(plugin.mPkgName);
                    sb.append(" versionCode:");
                    sb.append(plugin.getVersion());
                    sb.append("load failed;");
                    a(com.bytedance.pangle.b.b.h, b.a.B, plugin.mPkgName, plugin.getVersion(), -1L, sb.toString());
                    ZeusPluginStateListener.postStateChange(str, 10, new Object[0]);
                    f11352a.a(ZeusPluginEventCallback.EVENT_FINISH_LOAD, -1, plugin.mPkgName, plugin.getVersion(), null);
                }
                ZeusLogger.i(ZeusLogger.TAG_LOAD, "PluginLoader loadFinished, ".concat(String.valueOf(plugin)));
                if (plugin.isLoaded()) {
                    ZeusLogger.d(ZeusLogger.TAG_LOAD, "PluginLoader postResult, LOADED " + plugin.mPkgName);
                    return true;
                }
                return false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0318 A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0368 A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03f4 A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0133 A[Catch: all -> 0x043c, TRY_LEAVE, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0178 A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x018b A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x021c A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x022a A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0291 A[Catch: all -> 0x043c, TRY_ENTER, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02c8 A[Catch: all -> 0x043c, TryCatch #2 {all -> 0x043c, blocks: (B:3:0x000f, B:5:0x0021, B:7:0x003b, B:9:0x0041, B:11:0x005b, B:16:0x0078, B:18:0x008d, B:20:0x00a7, B:25:0x00c2, B:30:0x00ec, B:32:0x00fd, B:33:0x0100, B:38:0x011b, B:40:0x0122, B:42:0x0128, B:49:0x0133, B:55:0x0187, B:57:0x018b, B:58:0x0195, B:63:0x01b2, B:68:0x01dd, B:70:0x021c, B:71:0x0220, B:73:0x022a, B:74:0x022e, B:79:0x024b, B:84:0x027d, B:87:0x0291, B:89:0x0295, B:91:0x029f, B:94:0x02a8, B:96:0x02b7, B:95:0x02b5, B:97:0x02c4, B:99:0x02c8, B:101:0x02cc, B:103:0x02d6, B:106:0x02df, B:108:0x02ed, B:107:0x02eb, B:109:0x02f7, B:114:0x0314, B:116:0x0318, B:118:0x031c, B:120:0x0326, B:123:0x032f, B:125:0x033d, B:124:0x033b, B:126:0x0347, B:131:0x0364, B:133:0x0368, B:135:0x036c, B:137:0x0376, B:140:0x037f, B:142:0x038d, B:141:0x038b, B:143:0x0397, B:148:0x03b4, B:150:0x03b8, B:152:0x03c0, B:153:0x03cd, B:158:0x03ea, B:160:0x03f4, B:161:0x040d, B:165:0x041f, B:157:0x03df, B:147:0x03a9, B:130:0x0359, B:113:0x0309, B:83:0x0272, B:78:0x0240, B:67:0x01d2, B:62:0x01a7, B:54:0x0178, B:37:0x0110, B:29:0x00e1, B:24:0x00b7, B:15:0x006d, B:50:0x0144), top: B:175:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(java.lang.String r23, final com.bytedance.pangle.plugin.Plugin r24, java.lang.StringBuilder r25) {
        /*
            Method dump skipped, instructions count: 1122
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.plugin.c.a(java.lang.String, com.bytedance.pangle.plugin.Plugin, java.lang.StringBuilder):boolean");
    }

    public static void a(String str, int i, @NonNull String str2, int i2, long j, String str3) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.bytedance.pangle.log.c.a(Integer.valueOf(i)));
            jSONObject.putOpt("plugin_package_name", com.bytedance.pangle.log.c.a(str2));
            jSONObject.putOpt("version_code", com.bytedance.pangle.log.c.a(Integer.valueOf(i2)));
            jSONObject3.putOpt("duration", Integer.valueOf(com.bytedance.pangle.log.c.b(Long.valueOf(j))));
            jSONObject2.putOpt("message", com.bytedance.pangle.log.c.a(str3));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        com.bytedance.pangle.b.b.a().a(str, jSONObject, jSONObject3, jSONObject2);
    }
}
