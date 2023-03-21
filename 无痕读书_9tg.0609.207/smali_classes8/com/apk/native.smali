.class public Lcom/apk/native;
.super Ljava/lang/Object;
.source "AdChapterUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/import;


# direct methods
.method public constructor <init>(Lcom/apk/import;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/native;->do:Lcom/apk/import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "SP_READ_VIDEO_AD_DATE_TODAY_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "SP_READ_VIDEO_AD_COUNT_TODAY_KEY"

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/native;->do:Lcom/apk/import;

    .line 5
    iput v3, v1, Lcom/apk/import;->const:I

    .line 6
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/native;->do:Lcom/apk/import;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    .line 9
    iput v1, v0, Lcom/apk/import;->const:I

    .line 10
    iget-object v0, p0, Lcom/apk/native;->do:Lcom/apk/import;

    .line 11
    iget v1, v0, Lcom/apk/import;->const:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/apk/import;->const:I

    .line 12
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method
