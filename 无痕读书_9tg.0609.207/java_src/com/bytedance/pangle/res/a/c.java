package com.bytedance.pangle.res.a;

import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import com.apk.Cgoto;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public final class c {
    public final int a(File file, boolean z, StringBuilder sb) {
        String byteArrayOutputStream;
        try {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry("assets/ZeusResMapping");
            if (entry == null) {
                zipFile.close();
                return 200;
            }
            if (z) {
                File file2 = new File(file.getParentFile(), "resMappingBak");
                if (file2.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file2);
                    FileChannel channel = fileInputStream.getChannel();
                    byteArrayOutputStream = Charset.defaultCharset().newDecoder().decode(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).asReadOnlyBuffer()).toString();
                    channel.close();
                    fileInputStream.close();
                } else {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "resMappingBakFile is not exists. " + file2.getAbsolutePath());
                    sb.append("resMappingBakFile is not exists. ");
                    sb.append(file2.getAbsolutePath());
                    zipFile.close();
                    return 300;
                }
            } else {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                com.bytedance.pangle.util.g.a(zipFile.getInputStream(entry), byteArrayOutputStream2);
                byteArrayOutputStream = byteArrayOutputStream2.toString();
            }
            if (TextUtils.isEmpty(byteArrayOutputStream)) {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "zeusResMappingContent empty, useBakFile:".concat(String.valueOf(z)));
                sb.append("zeusResMappingContent isEmpty. useBakFile:");
                sb.append(z);
                zipFile.close();
                return 300;
            }
            JSONObject jSONObject = new JSONObject(byteArrayOutputStream);
            JSONObject jSONObject2 = new JSONObject(byteArrayOutputStream);
            JSONArray jSONArray = (JSONArray) jSONObject.get("fileNames");
            final HashSet hashSet = new HashSet();
            for (int i = 0; i < jSONArray.length(); i++) {
                hashSet.add((String) jSONArray.get(i));
            }
            final JSONObject jSONObject3 = (JSONObject) jSONObject.get("resMapping");
            final JSONObject jSONObject4 = (JSONObject) jSONObject2.get("resMapping");
            final int[] iArr = {0};
            a(file, hashSet, new h() { // from class: com.bytedance.pangle.res.a.c.1
                @Override // com.bytedance.pangle.res.a.h
                public final int a(int i2) {
                    String str = "0x" + Integer.toHexString(i2);
                    String str2 = (String) jSONObject3.opt(str);
                    if (str2 == null) {
                        return i2;
                    }
                    int identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1], str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                    if (identifier == 0) {
                        identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1].replaceAll("_", "."), str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                    }
                    if (identifier == 0) {
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "getIdentifier failed. resName is ".concat(str2));
                        return i2;
                    }
                    String str3 = "0x" + Integer.toHexString(identifier);
                    jSONObject4.remove(str);
                    try {
                        jSONObject4.put(str3, str2);
                    } catch (Throwable th) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "update resMappingBak failed.", th);
                    }
                    if (identifier != i2) {
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + 1;
                    }
                    return identifier;
                }

                @Override // com.bytedance.pangle.res.a.h
                public final boolean a(String str) {
                    return hashSet.contains(str);
                }
            });
            ZeusLogger.d(ZeusLogger.TAG_INSTALL, "modifyRes count = " + iArr[0]);
            if (com.bytedance.pangle.util.g.a(jSONObject2.toString(), new File(file.getParentFile(), "resMappingBak"), sb)) {
                zipFile.close();
                return 100;
            }
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "writeText failed." + sb.toString());
            sb.append("writeText failed.");
            zipFile.close();
            return 300;
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "modifyRes failed. catch: " + th.getMessage());
            sb.append("modifyRes failed. catch: ");
            sb.append(th.getMessage());
            return 300;
        }
    }

    public static void a(File file, HashSet<String> hashSet, h hVar) {
        int i;
        MappedByteBuffer a2 = a(file);
        int capacity = a2.capacity();
        if (capacity >= 22) {
            int i2 = capacity - 22;
            int min = Math.min(i2, 65535);
            for (int i3 = 0; i3 < min; i3++) {
                i = i2 - i3;
                if (a2.getInt(i) == 101010256 && a2.getShort(i + 20) == i3) {
                    break;
                }
            }
        }
        i = -1;
        if (i != -1) {
            int i4 = a2.getInt(i + 12);
            int i5 = a2.getInt(i + 16);
            int i6 = i4 + i5;
            while (i5 < i6) {
                if (a2.getInt(i5) == 33639248) {
                    int i7 = a2.getShort(i5 + 28);
                    short s = a2.getShort(i5 + 30);
                    byte[] bArr = new byte[i7];
                    for (int i8 = 0; i8 < i7; i8++) {
                        bArr[i8] = a2.get(i5 + 46 + i8);
                    }
                    String str = new String(bArr);
                    int i9 = a2.getInt(i5 + 20);
                    int i10 = a2.getInt(i5 + 24);
                    if (hashSet.contains(str)) {
                        if (i9 == i10) {
                            com.bytedance.pangle.util.d<Integer, byte[]> a3 = a(a2, a2.getInt(i5 + 42), str);
                            try {
                                byte[] bArr2 = a3.b;
                                if (!TextUtils.isEmpty(str) && hVar.a(str)) {
                                    if (str.equals("AndroidManifest.xml")) {
                                        k.a(bArr2, hVar);
                                    } else if ((str.endsWith(ActivityChooserModel.HISTORY_FILE_EXTENSION) && str.startsWith("res/")) || TextUtils.equals(str, "AndroidManifest.xml")) {
                                        k.a(bArr2, hVar);
                                    } else if (str.equals("resources.arsc")) {
                                        new a(bArr2, hVar).a();
                                    }
                                }
                                for (int i11 = 0; i11 < a3.b.length; i11++) {
                                    a2.put(a3.f11386a.intValue() + i11, a3.b[i11]);
                                }
                            } catch (Throwable th) {
                                throw new RuntimeException(th);
                            }
                        } else {
                            throw new Throwable(Cgoto.m989case(str, " is compressed."));
                        }
                    }
                    i5 += i7 + 46 + s;
                } else {
                    throw new RuntimeException("Expected: 0x02014b50, got: " + a2.getInt(i5));
                }
            }
            return;
        }
        throw new Throwable("endOfCentralPosition == -1");
    }

    public static com.bytedance.pangle.util.d<Integer, byte[]> a(MappedByteBuffer mappedByteBuffer, int i, String str) {
        if (mappedByteBuffer.getInt(i) == 67324752) {
            int i2 = mappedByteBuffer.getInt(i + 18);
            int i3 = mappedByteBuffer.getInt(i + 22);
            if (i2 == i3) {
                byte[] bArr = new byte[i3];
                int i4 = i + 30 + mappedByteBuffer.getShort(i + 26) + mappedByteBuffer.getShort(i + 28);
                for (int i5 = 0; i5 < i3; i5++) {
                    bArr[i5] = mappedByteBuffer.get(i4 + i5);
                }
                return new com.bytedance.pangle.util.d<>(Integer.valueOf(i4), bArr);
            }
            throw new RuntimeException(str + " is compressed. compressSize:" + i2 + " size:" + i3);
        }
        throw new RuntimeException("Expected: 0x04034b50, got: " + mappedByteBuffer.getInt(i) + " FileName:" + str);
    }

    public static MappedByteBuffer a(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            FileChannel channel = randomAccessFile.getChannel();
            long size = channel.size();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, 0L, size);
            byte[] bArr = new byte[4194304];
            long j = size / 4194304;
            int i = (int) (size % 4194304);
            for (int i2 = 0; i2 < j; i2++) {
                map.get(bArr);
            }
            if (i > 0) {
                map.get(new byte[i]);
            }
            map.order(ByteOrder.LITTLE_ENDIAN);
            channel.close();
            randomAccessFile.close();
            return map;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
