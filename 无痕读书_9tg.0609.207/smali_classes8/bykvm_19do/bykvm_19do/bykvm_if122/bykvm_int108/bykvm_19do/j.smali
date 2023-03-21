.class public abstract Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/d;
.source "AdInitPangleBase.java"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/d;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->c:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/d;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/k;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/k;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/i;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;
    .locals 1

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/k;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/k;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/i;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/i;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId\u4e3a\u7a7a"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->c:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_use_texture_view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_paid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pangle_title_bar_theme"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_allow_show_notify"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->z()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pangle_is_pangle_allow_show_page_when_screen_lock"

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->o()[I

    move-result-object v1

    const-string v2, "pangle_direct_download_networktype"

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->l()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_need_clear_task_reset"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle_keywords"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pangle_plugin_update_config"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
