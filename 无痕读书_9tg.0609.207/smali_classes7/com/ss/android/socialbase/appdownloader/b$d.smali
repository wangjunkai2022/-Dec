.class public Lcom/ss/android/socialbase/appdownloader/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/ss/android/socialbase/appdownloader/b$b;

.field public final c:Landroid/os/Handler;

.field public final d:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/b$b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    .line 4
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    .line 5
    iput-wide p4, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->b:Lcom/ss/android/socialbase/appdownloader/b$b;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/appdownloader/b$b;->a(Landroid/content/Context;)Z

    move-result v0

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 6
    iput v0, v1, Landroid/os/Message;->what:I

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 8
    iput v0, v1, Landroid/os/Message;->what:I

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->c:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/b$d;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 11
    :catchall_0
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/b$d;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
