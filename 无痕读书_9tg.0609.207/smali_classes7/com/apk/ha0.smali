.class public Lcom/apk/ha0;
.super Ljava/lang/Object;
.source "EmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ha0$if;
    }
.end annotation


# static fields
.field public static final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apk/ga0;",
            ">;"
        }
    .end annotation
.end field

.field public static final do:Ljava/util/regex/Pattern;

.field public static final else:Ljava/util/regex/Pattern;

.field public static final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apk/ga0;",
            ">;"
        }
    .end annotation
.end field

.field public static final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ga0;",
            ">;"
        }
    .end annotation
.end field

.field public static final new:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ga0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apk/ha0;->if:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apk/ha0;->for:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apk/ha0;->try:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apk/ha0;->case:Ljava/util/Map;

    .line 5
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tr_sdk_comment_config.xml"

    .line 6
    new-instance v2, Lcom/apk/ha0$if;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/apk/ha0$if;-><init>(Lcom/apk/ha0$do;)V

    .line 7
    iput-object v0, v2, Lcom/apk/ha0$if;->do:Landroid/content/Context;

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 9
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v3, v0, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 12
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "\\[[^\\[]{1,10}\\]"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/ha0;->do:Ljava/util/regex/Pattern;

    const-string v0, "@.*?\uff1a"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/ha0;->else:Ljava/util/regex/Pattern;

    .line 16
    new-instance v0, Lcom/apk/ha0$do;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/apk/ha0$do;-><init>(I)V

    sput-object v0, Lcom/apk/ha0;->new:Landroid/util/LruCache;

    return-void

    :goto_1
    if-eqz v3, :cond_1

    .line 17
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :cond_1
    :goto_2
    throw v0
.end method

.method public static do(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/ha0;->case:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apk/ga0;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/apk/ha0;->try:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apk/ga0;

    :cond_0
    if-eqz p0, :cond_1

    .line 4
    iget p0, p0, Lcom/apk/ga0;->for:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    sget p0, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_face_ac:I

    return p0
.end method

.method public static for()Ljava/lang/String;
    .locals 1

    const-string v0, "face_man_1"

    return-object v0
.end method

.method public static if()Ljava/lang/String;
    .locals 1

    const-string v0, "face_lady_2"

    return-object v0
.end method
