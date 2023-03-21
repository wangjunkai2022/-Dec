.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"


# static fields
.field public static volatile b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/h;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/h;->b()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a()Z

    move-result v4

    .line 9
    invoke-static {v2, v3, v1, p1, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/h;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/h;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->b()Z

    move-result v3

    .line 6
    invoke-static {v1, v2, v0, p1, v3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload_scene"

    const-string v3, "direct"

    .line 7
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
