.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_19do/a1;


# instance fields
.field public final a:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

.field public b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_19do/o0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/a1;)V

    return-void
.end method

.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/a1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/g1$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/g1;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    .line 4
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_19do/g1;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 6
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    :try_start_1
    const-string v2, "SHA1"

    .line 7
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/g1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/a1;

    invoke-interface {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1;->b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/g1$b;

    invoke-direct {v2, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/g1$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/g1;Landroid/content/Context;)V

    invoke-direct {v1, p1, v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;)V

    .line 7
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;-><init>()V

    .line 9
    iput-object p1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->a:Ljava/lang/String;

    return-object v0
.end method
