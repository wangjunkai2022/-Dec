.class public Lcom/apk/yp0;
.super Lcom/apk/hr0;
.source "SkinCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/yp0$do;,
        Lcom/apk/yp0$for;,
        Lcom/apk/yp0$if;
    }
.end annotation


# static fields
.field public static volatile class:Lcom/apk/yp0;


# instance fields
.field public break:Z

.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/dq0;",
            ">;"
        }
    .end annotation
.end field

.field public catch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/dq0;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Landroid/content/Context;

.field public goto:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/apk/yp0$for;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/lang/Object;

.field public new:Z

.field public this:Z

.field public try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/eq0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/apk/hr0;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apk/yp0;->if:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/yp0;->new:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/yp0;->try:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/yp0;->case:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/yp0;->else:Ljava/util/List;

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/apk/yp0;->this:Z

    .line 9
    iput-boolean v1, p0, Lcom/apk/yp0;->break:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/yp0;->for:Landroid/content/Context;

    .line 11
    iget-object p1, p0, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    new-instance v2, Lcom/apk/er0;

    invoke-direct {v2}, Lcom/apk/er0;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    new-instance v2, Lcom/apk/cr0;

    invoke-direct {v2}, Lcom/apk/cr0;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    new-instance v0, Lcom/apk/dr0;

    invoke-direct {v0}, Lcom/apk/dr0;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    new-instance v0, Lcom/apk/fr0;

    invoke-direct {v0}, Lcom/apk/fr0;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/String;Lcom/apk/yp0$if;I)Landroid/os/AsyncTask;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/yp0$for;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/apk/yp0$do;

    invoke-direct {v0, p0, p2, p3}, Lcom/apk/yp0$do;-><init>(Lcom/apk/yp0;Lcom/apk/yp0$if;Lcom/apk/yp0$for;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    invoke-virtual {v0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yp0;->for:Landroid/content/Context;

    return-object v0
.end method

.method public if(Ljava/lang/String;I)Landroid/os/AsyncTask;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/apk/yp0;->for(Ljava/lang/String;Lcom/apk/yp0$if;I)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method
