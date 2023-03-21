.class public Lbykvm_19do/bykvm_19do/bykvm_19do/n2;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->k()Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->k()Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->s()Lbykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object v0

    invoke-interface {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mc"

    .line 3
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
