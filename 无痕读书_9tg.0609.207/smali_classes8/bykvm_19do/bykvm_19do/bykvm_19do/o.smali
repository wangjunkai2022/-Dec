.class public Lbykvm_19do/bykvm_19do/bykvm_19do/o;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/e2;
.source "SourceFile"


# instance fields
.field public final e:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;-><init>(ZZZ)V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/o;->e:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/o;->e:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->w()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_id"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_id"

    .line 3
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ssid"

    .line 4
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1, v6, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register_time"

    const-wide/16 v6, 0x0

    .line 8
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 9
    invoke-static {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    cmp-long v2, v8, v6

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    move-wide v6, v8

    .line 11
    :goto_0
    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
