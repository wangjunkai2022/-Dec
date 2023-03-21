.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/k;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/e2;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k;->f:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->w()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "oaid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
