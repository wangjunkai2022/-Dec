.class public Lcom/apk/cm0;
.super Ljava/lang/Object;
.source "SubscriberMethod.java"


# instance fields
.field public case:Ljava/lang/String;

.field public final do:Ljava/lang/reflect/Method;

.field public final for:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final if:Lorg/greenrobot/eventbus/ThreadMode;

.field public final new:I

.field public final try:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/greenrobot/eventbus/ThreadMode;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/cm0;->do:Ljava/lang/reflect/Method;

    .line 3
    iput-object p3, p0, Lcom/apk/cm0;->if:Lorg/greenrobot/eventbus/ThreadMode;

    .line 4
    iput-object p2, p0, Lcom/apk/cm0;->for:Ljava/lang/Class;

    .line 5
    iput p4, p0, Lcom/apk/cm0;->new:I

    .line 6
    iput-boolean p5, p0, Lcom/apk/cm0;->try:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized do()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/cm0;->case:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/apk/cm0;->do:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/cm0;->do:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/cm0;->for:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/cm0;->case:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/apk/cm0;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/apk/cm0;->do()V

    .line 3
    check-cast p1, Lcom/apk/cm0;

    .line 4
    invoke-virtual {p1}, Lcom/apk/cm0;->do()V

    .line 5
    iget-object v0, p0, Lcom/apk/cm0;->case:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/cm0;->case:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/cm0;->do:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method
