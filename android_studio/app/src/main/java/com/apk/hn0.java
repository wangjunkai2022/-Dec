package com.apk;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManagerImpl;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.textfield.IndicatorViewController;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.DecodedBitStreamParser;
import com.qq.e.comm.adevent.AdEventType;
import com.qq.e.comm.constants.ErrorCode;
import com.umeng.analytics.pro.o;
import java.util.HashMap;
import java.util.Map;

/* compiled from: SpecialEntities.java */
/* loaded from: classes7.dex */
public class hn0 {

    /* renamed from: case  reason: not valid java name */
    public static final hn0 f1901case = new Cdo(true, true);

    /* renamed from: for  reason: not valid java name */
    public boolean f1903for;

    /* renamed from: new  reason: not valid java name */
    public boolean f1905new;

    /* renamed from: try  reason: not valid java name */
    public int f1906try;

    /* renamed from: do  reason: not valid java name */
    public Map<String, in0> f1902do = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public Map<Integer, in0> f1904if = new HashMap();

    /* compiled from: SpecialEntities.java */
    /* renamed from: com.apk.hn0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends hn0 {
        public Cdo(boolean z, boolean z2) {
            super(z, z2);
        }
    }

    public hn0(boolean z, boolean z2) {
        this.f1903for = z;
        this.f1905new = z2;
        m1143do(new in0("null", 0, "", true));
        m1143do(new in0("nbsp", 160, null, true));
        m1143do(new in0("iexcl", 161, null, true));
        m1143do(new in0("cent", 162, null, true));
        m1143do(new in0("pound", 163, null, true));
        m1143do(new in0("curren", 164, null, true));
        m1143do(new in0("yen", 165, null, true));
        m1143do(new in0("brvbar", TTAdConstant.IMAGE_MODE_LIVE, null, true));
        m1143do(new in0("sect", 167, null, true));
        m1143do(new in0("uml", 168, null, true));
        m1143do(new in0("copy", 169, null, true));
        m1143do(new in0("ordf", 170, null, true));
        m1143do(new in0("laquo", 171, null, true));
        m1143do(new in0("not", 172, null, true));
        m1143do(new in0("shy", 173, null, true));
        m1143do(new in0("reg", 174, null, true));
        m1143do(new in0("macr", HideBottomViewOnScrollBehavior.EXIT_ANIMATION_DURATION, null, true));
        m1143do(new in0("deg", 176, null, true));
        m1143do(new in0("plusmn", 177, null, true));
        m1143do(new in0("sup2", 178, null, true));
        m1143do(new in0("sup3", 179, null, true));
        m1143do(new in0("acute", 180, null, true));
        m1143do(new in0("micro", 181, null, true));
        m1143do(new in0("para", 182, null, true));
        m1143do(new in0("middot", 183, null, true));
        m1143do(new in0("cedil", 184, null, true));
        m1143do(new in0("sup1", 185, null, true));
        m1143do(new in0("ordm", 186, null, true));
        m1143do(new in0("raquo", 187, null, true));
        m1143do(new in0("frac14", 188, null, true));
        m1143do(new in0("frac12", 189, null, true));
        m1143do(new in0("frac34", 190, null, true));
        m1143do(new in0("iquest", 191, null, true));
        m1143do(new in0("Agrave", 192, null, true));
        m1143do(new in0("Aacute", 193, null, true));
        m1143do(new in0("Acirc", 194, null, true));
        m1143do(new in0("Atilde", 195, null, true));
        m1143do(new in0("Auml", 196, null, true));
        m1143do(new in0("Aring", 197, null, true));
        m1143do(new in0("AElig", 198, null, true));
        m1143do(new in0("Ccedil", 199, null, true));
        m1143do(new in0("Egrave", 200, null, true));
        m1143do(new in0("Eacute", AdEventType.VIDEO_CACHE, null, true));
        m1143do(new in0("Ecirc", AdEventType.VIDEO_START, null, true));
        m1143do(new in0("Euml", AdEventType.VIDEO_RESUME, null, true));
        m1143do(new in0("Igrave", AdEventType.VIDEO_PAUSE, null, true));
        m1143do(new in0("Iacute", AdEventType.VIDEO_STOP, null, true));
        m1143do(new in0("Icirc", AdEventType.VIDEO_COMPLETE, null, true));
        m1143do(new in0("Iuml", AdEventType.VIDEO_ERROR, null, true));
        m1143do(new in0("ETH", AdEventType.VIDEO_CLICKED, null, true));
        m1143do(new in0("Ntilde", AdEventType.VIDEO_INIT, null, true));
        m1143do(new in0("Ograve", AdEventType.VIDEO_READY, null, true));
        m1143do(new in0("Oacute", AdEventType.VIDEO_LOADING, null, true));
        m1143do(new in0("Ocirc", AdEventType.VIDEO_PRELOADED, null, true));
        m1143do(new in0("Otilde", AdEventType.VIDEO_PRELOAD_ERROR, null, true));
        m1143do(new in0("Ouml", 214, null, true));
        m1143do(new in0("times", 215, null, true));
        m1143do(new in0("Oslash", 216, null, true));
        m1143do(new in0("Ugrave", IndicatorViewController.CAPTION_TRANSLATE_Y_ANIMATION_DURATION, null, true));
        m1143do(new in0("Uacute", 218, null, true));
        m1143do(new in0("Ucirc", 219, null, true));
        m1143do(new in0("Uuml", FragmentManagerImpl.ANIM_DUR, null, true));
        m1143do(new in0("Yacute", 221, null, true));
        m1143do(new in0("THORN", 222, null, true));
        m1143do(new in0("szlig", 223, null, true));
        m1143do(new in0("agrave", 224, null, true));
        m1143do(new in0("aacute", HideBottomViewOnScrollBehavior.ENTER_ANIMATION_DURATION, null, true));
        m1143do(new in0("acirc", 226, null, true));
        m1143do(new in0("atilde", 227, null, true));
        m1143do(new in0("auml", 228, null, true));
        m1143do(new in0("aring", 229, null, true));
        m1143do(new in0("aelig", 230, null, true));
        m1143do(new in0("ccedil", 231, null, true));
        m1143do(new in0("egrave", 232, null, true));
        m1143do(new in0("eacute", 233, null, true));
        m1143do(new in0("ecirc", 234, null, true));
        m1143do(new in0("euml", 235, null, true));
        m1143do(new in0("igrave", 236, null, true));
        m1143do(new in0("iacute", 237, null, true));
        m1143do(new in0("icirc", 238, null, true));
        m1143do(new in0("iuml", 239, null, true));
        m1143do(new in0("eth", 240, null, true));
        m1143do(new in0("ntilde", 241, null, true));
        m1143do(new in0("ograve", 242, null, true));
        m1143do(new in0("oacute", 243, null, true));
        m1143do(new in0("ocirc", 244, null, true));
        m1143do(new in0("otilde", 245, null, true));
        m1143do(new in0("ouml", 246, null, true));
        m1143do(new in0("divide", 247, null, true));
        m1143do(new in0("oslash", 248, null, true));
        m1143do(new in0("ugrave", 249, null, true));
        m1143do(new in0("uacute", 250, null, true));
        m1143do(new in0("ucirc", 251, null, true));
        m1143do(new in0("uuml", 252, null, true));
        m1143do(new in0("yacute", 253, null, true));
        m1143do(new in0("thorn", 254, null, true));
        m1143do(new in0("yuml", 255, null, true));
        m1143do(new in0("OElig", 338, null, true));
        m1143do(new in0("oelig", 339, null, true));
        m1143do(new in0("Scaron", 352, null, true));
        m1143do(new in0("scaron", 353, null, true));
        m1143do(new in0("Yuml", 376, null, true));
        m1143do(new in0("fnof", 402, null, true));
        m1143do(new in0("circ", 710, null, true));
        m1143do(new in0("tilde", 732, null, true));
        if (this.f1903for) {
            m1143do(new in0("Alpha", 913, null, true));
            m1143do(new in0("Beta", 914, null, true));
            m1143do(new in0(ExifInterface.TAG_GAMMA, 915, null, true));
            m1143do(new in0("Delta", 916, null, true));
            m1143do(new in0("Epsilon", 917, null, true));
            m1143do(new in0("Zeta", 918, null, true));
            m1143do(new in0("Eta", 919, null, true));
            m1143do(new in0("Theta", 920, null, true));
            m1143do(new in0("Iota", 921, null, true));
            m1143do(new in0("Kappa", DecodedBitStreamParser.MACRO_PDF417_TERMINATOR, null, true));
            m1143do(new in0("Lambda", DecodedBitStreamParser.BEGIN_MACRO_PDF417_OPTIONAL_FIELD, null, true));
            m1143do(new in0("Mu", 924, null, true));
            m1143do(new in0("Nu", 925, null, true));
            m1143do(new in0("Xi", 926, null, true));
            m1143do(new in0("Omicron", 927, null, true));
            m1143do(new in0("Pi", 928, null, true));
            m1143do(new in0("Rho", PDF417Common.NUMBER_OF_CODEWORDS, null, true));
            m1143do(new in0("Sigma", 931, null, true));
            m1143do(new in0("Tau", 932, null, true));
            m1143do(new in0("Upsilon", 933, null, true));
            m1143do(new in0("Phi", 934, null, true));
            m1143do(new in0("Chi", 935, null, true));
            m1143do(new in0("Psi", 936, null, true));
            m1143do(new in0("Omega", 937, null, true));
            m1143do(new in0("alpha", 945, null, true));
            m1143do(new in0("beta", 946, null, true));
            m1143do(new in0("gamma", 947, null, true));
            m1143do(new in0("delta", 948, null, true));
            m1143do(new in0("epsilon", 949, null, true));
            m1143do(new in0("zeta", 950, null, true));
            m1143do(new in0("eta", 951, null, true));
            m1143do(new in0("theta", 952, null, true));
            m1143do(new in0("iota", 953, null, true));
            m1143do(new in0("kappa", 954, null, true));
            m1143do(new in0("lambda", 955, null, true));
            m1143do(new in0("mu", 956, null, true));
            m1143do(new in0("nu", 957, null, true));
            m1143do(new in0("xi", 958, null, true));
            m1143do(new in0("omicron", 959, null, true));
            m1143do(new in0("pi", 960, null, true));
            m1143do(new in0("rho", 961, null, true));
            m1143do(new in0("sigmaf", 962, null, true));
            m1143do(new in0("sigma", 963, null, true));
            m1143do(new in0("tau", 964, null, true));
            m1143do(new in0("upsilon", 965, null, true));
            m1143do(new in0("phi", 966, null, true));
            m1143do(new in0("chi", 967, null, true));
            m1143do(new in0("psi", 968, null, true));
            m1143do(new in0("omega", 969, null, true));
            m1143do(new in0("thetasym", 977, null, true));
            m1143do(new in0("upsih", 978, null, true));
            m1143do(new in0("piv", 982, null, true));
        }
        m1143do(new in0("ensp", 8194, null, true));
        m1143do(new in0("emsp", o.a.r, null, true));
        m1143do(new in0("thinsp", o.a.w, null, true));
        m1143do(new in0("zwnj", 8204, null, true));
        m1143do(new in0("zwj", 8205, null, true));
        m1143do(new in0("lrm", 8206, null, true));
        m1143do(new in0("rlm", 8207, null, true));
        m1143do(new in0("ndash", o.a.A, null, true));
        m1143do(new in0("mdash", o.a.B, null, true));
        m1143do(new in0("lsquo", 8216, null, true));
        m1143do(new in0("rsquo", 8217, null, true));
        m1143do(new in0("sbquo", 8218, null, true));
        m1143do(new in0("ldquo", 8220, null, true));
        m1143do(new in0("rdquo", 8221, null, true));
        m1143do(new in0("bdquo", 8222, null, true));
        m1143do(new in0("dagger", 8224, null, true));
        m1143do(new in0("Dagger", 8225, null, true));
        m1143do(new in0("bull", 8226, null, true));
        m1143do(new in0("hellip", 8230, null, true));
        m1143do(new in0("permil", 8240, null, true));
        m1143do(new in0("prime", 8242, null, true));
        m1143do(new in0("Prime", 8243, null, true));
        m1143do(new in0("lsaquo", 8249, null, true));
        m1143do(new in0("rsaquo", 8250, null, true));
        m1143do(new in0("oline", 8254, null, true));
        m1143do(new in0("frasl", 8260, null, true));
        m1143do(new in0("euro", 8364, null, true));
        m1143do(new in0("image", 8465, null, true));
        m1143do(new in0("weierp", 8472, null, true));
        m1143do(new in0("real", 8476, null, true));
        m1143do(new in0("trade", 8482, null, true));
        m1143do(new in0("alefsym", 8501, null, true));
        m1143do(new in0("larr", 8592, null, true));
        m1143do(new in0("uarr", 8593, null, true));
        m1143do(new in0("rarr", 8594, null, true));
        m1143do(new in0("darr", 8595, null, true));
        m1143do(new in0("harr", 8596, null, true));
        m1143do(new in0("crarr", 8629, null, true));
        m1143do(new in0("lArr", 8656, null, true));
        m1143do(new in0("uArr", 8657, null, true));
        m1143do(new in0("rArr", 8658, null, true));
        m1143do(new in0("dArr", 8659, null, true));
        m1143do(new in0("hArr", 8660, null, true));
        if (this.f1905new) {
            m1143do(new in0("forall", 8704, null, true));
            m1143do(new in0("part", 8706, null, true));
            m1143do(new in0("exist", 8707, null, true));
            m1143do(new in0(com.umeng.commonsdk.statistics.b.f, 8709, null, true));
            m1143do(new in0("nabla", 8711, null, true));
            m1143do(new in0("isin", 8712, null, true));
            m1143do(new in0("notin", 8713, null, true));
            m1143do(new in0("ni", 8715, null, true));
            m1143do(new in0("prod", 8719, null, true));
            m1143do(new in0("sum", 8721, null, true));
            m1143do(new in0("minus", 8722, null, true));
            m1143do(new in0("lowast", 8727, null, true));
            m1143do(new in0("radic", 8730, null, true));
            m1143do(new in0("prop", 8733, null, true));
            m1143do(new in0("infin", 8734, null, true));
            m1143do(new in0("ang", 8736, null, true));
            m1143do(new in0("and", 8743, null, true));
            m1143do(new in0("or", 8744, null, true));
            m1143do(new in0("cap", 8745, null, true));
            m1143do(new in0("cup", 8746, null, true));
            m1143do(new in0("int", 8747, null, true));
            m1143do(new in0("there4", 8756, null, true));
            m1143do(new in0("sim", 8764, null, true));
            m1143do(new in0("cong", 8773, null, true));
            m1143do(new in0("asymp", 8776, null, true));
            m1143do(new in0("ne", 8800, null, true));
            m1143do(new in0("equiv", 8801, null, true));
            m1143do(new in0("le", 8804, null, true));
            m1143do(new in0("ge", 8805, null, true));
            m1143do(new in0("sub", 8834, null, true));
            m1143do(new in0("sup", 8835, null, true));
            m1143do(new in0("nsub", 8836, null, true));
            m1143do(new in0("sube", 8838, null, true));
            m1143do(new in0("supe", 8839, null, true));
            m1143do(new in0("oplus", 8853, null, true));
            m1143do(new in0("otimes", 8855, null, true));
            m1143do(new in0("perp", 8869, null, true));
            m1143do(new in0("sdot", 8901, null, true));
            m1143do(new in0("lceil", 8968, null, true));
            m1143do(new in0("rceil", 8969, null, true));
            m1143do(new in0("lfloor", 8970, null, true));
            m1143do(new in0("rfloor", 8971, null, true));
            m1143do(new in0("lang", ErrorCode.PrivateError.LOAD_FAIL, null, true));
            m1143do(new in0("rang", ErrorCode.PrivateError.PARAM_ERROR, null, true));
            m1143do(new in0("loz", 9674, null, true));
            m1143do(new in0("spades", 9824, null, true));
            m1143do(new in0("clubs", 9827, null, true));
            m1143do(new in0("hearts", 9829, null, true));
            m1143do(new in0("diams", 9830, null, true));
        }
        m1143do(new in0("amp", 38, null, false));
        m1143do(new in0("lt", 60, null, false));
        m1143do(new in0("gt", 62, null, false));
        m1143do(new in0("quot", 34, null, false));
        m1143do(new in0("apos", 39, "'", false));
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1143do(in0 in0Var) {
        in0 put = this.f1902do.put(in0Var.f2203do, in0Var);
        if (put == null) {
            in0 put2 = this.f1904if.put(Integer.valueOf(in0Var.f2205if), in0Var);
            if (put2 == null) {
                this.f1906try = Math.max(this.f1906try, in0Var.f2203do.length());
                return;
            }
            throw new an0("replaced " + put2 + " with " + in0Var);
        }
        throw new an0("replaced " + put + " with " + in0Var);
    }

    /* renamed from: for  reason: not valid java name */
    public in0 m1144for(int i) {
        return this.f1904if.get(Integer.valueOf(i));
    }

    /* renamed from: if  reason: not valid java name */
    public in0 m1145if(String str) {
        String substring;
        if (str.length() == 0) {
            return null;
        }
        int i = str.charAt(0) == '&' ? 1 : 0;
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            substring = str.substring(i);
        } else {
            substring = str.substring(i, indexOf);
        }
        return this.f1902do.get(substring);
    }
}
