.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/g;
.super Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;
.source "JavaCrashAssembly.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/d;)V
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    invoke-direct {p0, v0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/d;)V

    return-void
.end method


# virtual methods
.method public b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;->b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "app_count"

    invoke-virtual {p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "magic_tag"

    const-string v1, "ss_app_log"

    .line 3
    invoke-virtual {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;)V

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;

    move-result-object v0

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/a;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/i;->j()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;

    invoke-interface {v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;

    .line 10
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/c;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    invoke-static {p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/k;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/b;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;)V

    return-object p1
.end method
