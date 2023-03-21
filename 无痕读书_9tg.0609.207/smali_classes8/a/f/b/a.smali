.class public La/f/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/f/b/a$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:La/f/a/a;

.field public c:Landroid/content/ServiceConnection;

.field public d:La/f/b/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f/b/a;->a:Landroid/content/Context;

    iput-object v0, p0, La/f/b/a;->d:La/f/b/a$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;La/f/b/a$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/f/b/a$b<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    iput-object p1, p0, La/f/b/a;->a:Landroid/content/Context;

    iput-object p2, p0, La/f/b/a;->d:La/f/b/a$b;

    new-instance p1, La/f/b/a$a;

    invoke-direct {p1, p0}, La/f/b/a$a;-><init>(La/f/b/a;)V

    iput-object p1, p0, La/f/b/a;->c:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v0, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, La/f/b/a;->a:Landroid/content/Context;

    iget-object v0, p0, La/f/b/a;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
