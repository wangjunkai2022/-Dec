.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;
.super Ljava/lang/Object;
.source "ActivityDataManager.java"


# static fields
.field public static s:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;


# instance fields
.field public a:Landroid/app/Application;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:J

.field public q:I

.field public final r:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->f:Ljava/util/List;

    .line 6
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 7
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->b:Landroid/content/Context;

    .line 8
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a:Landroid/app/Application;

    .line 10
    :cond_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->f()V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->n:J

    return-wide p1
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 2

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->p:J

    return-wide p1
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->m:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;
    .locals 0

    .line 3
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->h:J

    return-wide p1
.end method

.method public static synthetic c()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->s:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/d;

    return-object v0
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;
    .locals 0

    .line 3
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->h:J

    return-wide v0
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->j:J

    return-wide p1
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method private d()Lorg/json/JSONArray;
    .locals 5

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    :try_start_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->l:J

    return-wide p1
.end method

.method public static synthetic e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    return-object p0
.end method

.method private e()Lorg/json/JSONArray;
    .locals 5

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    :try_start_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic f(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->r:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->q:I

    return v0
.end method

.method public static synthetic h(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->q:I

    return v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "last_create_activity"

    .line 9
    :try_start_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->g:Ljava/lang/String;

    iget-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->h:J

    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "last_start_activity"

    .line 10
    :try_start_1
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->i:Ljava/lang/String;

    iget-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->j:J

    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "last_resume_activity"

    .line 11
    :try_start_2
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->k:Ljava/lang/String;

    iget-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->l:J

    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "last_pause_activity"

    .line 12
    :try_start_3
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->m:Ljava/lang/String;

    iget-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->n:J

    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "last_stop_activity"

    .line 13
    :try_start_4
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->o:Ljava/lang/String;

    iget-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->p:J

    invoke-direct {p0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "alive_activities"

    .line 14
    :try_start_5
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->d()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "finish_activities"

    .line 15
    :try_start_6
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->e()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 6

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/b;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_2

    .line 8
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "id"

    .line 10
    :try_start_2
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "package_name"

    .line 11
    :try_start_3
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "description"

    .line 12
    :try_start_4
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v4, "number_of_activities"

    .line 13
    :try_start_5
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v4, "number_of_running_activities"

    .line 14
    :try_start_6
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v4, "topActivity"

    .line 15
    :try_start_7
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v4, "baseActivity"

    .line 16
    :try_start_8
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    :cond_4
    return-object v0
.end method
