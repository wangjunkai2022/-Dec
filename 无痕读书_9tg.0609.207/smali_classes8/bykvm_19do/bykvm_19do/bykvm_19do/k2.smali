.class public Lbykvm_19do/bykvm_19do/bykvm_19do/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:[Ljava/lang/String;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

.field public d:Lorg/json/JSONObject;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/e2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/SharedPreferences;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "channel"

    const-string v1, "package"

    const-string v2, "app_version"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    .line 4
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    .line 6
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->w()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->f:Landroid/content/SharedPreferences;

    .line 7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->s()Z

    move-result p1

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Z)V

    .line 10
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_19do/e2;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-boolean v1, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSyncFromSub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xd

    if-lt v1, v2, :cond_8

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_2
    return v0
.end method

.method private declared-synchronized b(Lorg/json/JSONObject;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null abconfig"

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 18
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 19
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 21
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 24
    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vid"

    .line 25
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 27
    :try_start_3
    invoke-static {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 29
    invoke-direct {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ab_version"

    invoke-direct {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Null"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .line 30
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 32
    :cond_1
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d:Lorg/json/JSONObject;

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    invoke-static {v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iput-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 38
    :try_start_1
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 39
    :goto_0
    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const/4 v1, 0x0

    .line 40
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeader, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private n()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    return-object p2
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "custom"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    :try_start_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 23
    :cond_2
    invoke-direct {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c(Lorg/json/JSONObject;)V

    .line 8
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    const-string v2, "register_time"

    const-string v3, "ssid"

    const-string v4, "install_id"

    const-string v6, ""

    const-string v8, "device_id"

    const-string v10, "version_code"

    .line 29
    sget-boolean v11, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v11, :cond_0

    const-string v11, "saveRegisterInfo, "

    const-string v12, ", "

    .line 30
    invoke-static {v11, v5, v12, v7, v12}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_0
    invoke-static/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;)Z

    move-result v11

    .line 32
    invoke-static/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    .line 33
    :try_start_0
    invoke-static/range {p4 .. p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;)Z

    move-result v14

    .line 34
    iget-object v15, v1, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->f:Landroid/content/SharedPreferences;

    invoke-interface {v15, v10, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 35
    invoke-direct/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v15

    const/4 v9, 0x0

    invoke-virtual {v15, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 36
    iget-object v15, v1, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->f:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    if-eq v13, v9, :cond_1

    .line 37
    invoke-interface {v15, v10, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz v11, :cond_2

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 39
    invoke-interface {v15, v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v11, :cond_3

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "response"

    .line 42
    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tt_fetch_did_error"

    .line 43
    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_4

    .line 45
    invoke-direct {v1, v8, v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-interface {v15, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 47
    :goto_1
    invoke-direct/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v12, :cond_5

    .line 48
    invoke-direct {v1, v4, v7}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 49
    invoke-interface {v15, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    .line 50
    :cond_5
    invoke-direct/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v14, :cond_6

    move-object/from16 v10, p4

    .line 51
    invoke-direct {v1, v3, v10}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 52
    invoke-interface {v15, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v10, p4

    :cond_7
    move v3, v2

    .line 53
    :goto_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_19do/c;

    move-result-object v2

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v6, v8

    move-object/from16 v7, p3

    move-object v8, v9

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_19do/c;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "oaid"

    .line 1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-static {v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public c()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    const-string v1, "version_code"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-ne v0, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e()Z

    .line 3
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    const-string v1, "app_version"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e()Z

    .line 3
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public e()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/f2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/f2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/h2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/h2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/i2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/i2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/l2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/l2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/m2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/m2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/n2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/n2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/j;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/l;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/m;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/m;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/n;

    invoke-direct {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/n;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/o;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/o;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/p;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/q;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/r;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/r;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/c2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/c2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/k;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/k;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/g2;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b:Landroid/content/Context;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->c:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/g2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 24
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0xa

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;

    .line 25
    iget-boolean v9, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->c:Z

    if-nez v9, :cond_1

    invoke-direct {p0, v7}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e2;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 26
    :cond_1
    :try_start_1
    invoke-virtual {v7, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a(Lorg/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 27
    iget-boolean v10, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->b:Z

    if-nez v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    const-string v10, "loadHeader, "

    .line 28
    invoke-static {v10}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-boolean v9, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a:Z

    if-nez v9, :cond_2

    iget v9, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    if-le v9, v8, :cond_2

    .line 30
    iput-boolean v3, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a:Z

    goto :goto_1

    :catch_1
    move-exception v8

    .line 31
    invoke-static {v8}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 32
    :cond_2
    :goto_1
    iget-boolean v8, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a:Z

    if-nez v8, :cond_3

    iget-boolean v8, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->b:Z

    if-nez v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 33
    :cond_3
    iget-boolean v8, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->a:Z

    if-nez v8, :cond_5

    iget-boolean v7, v7, Lbykvm_19do/bykvm_19do/bykvm_19do/e2;->b:Z

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    :goto_3
    and-int/2addr v4, v7

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    if-eqz v4, :cond_8

    .line 34
    sget-object v7, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->h:[Ljava/lang/String;

    array-length v9, v7

    :goto_4
    if-ge v2, v9, :cond_7

    aget-object v10, v7, v2

    .line 35
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v3

    and-int/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const-string v2, "user_unique_id"

    .line 36
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    :try_start_2
    const-string v7, "user_unique_id"

    .line 38
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 39
    :cond_8
    :goto_5
    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d:Lorg/json/JSONObject;

    .line 40
    iput-boolean v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    .line 41
    sget-boolean v1, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "loadHeader, "

    .line 42
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    const-string v1, "loadHeader, "

    .line 43
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    if-lez v5, :cond_a

    if-ne v5, v6, :cond_a

    .line 44
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    .line 45
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->k()I

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    add-int/2addr v0, v8

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g:I

    .line 47
    :cond_a
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    if-eqz v0, :cond_b

    .line 48
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_19do/c;

    move-result-object v0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_b
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a:Z

    return v0

    :catchall_0
    move-exception v1

    .line 50
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "install_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "install_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->f:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public l()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
