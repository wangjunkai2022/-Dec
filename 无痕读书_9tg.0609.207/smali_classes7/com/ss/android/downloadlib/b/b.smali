.class public Lcom/ss/android/downloadlib/b/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/b/g;I)V
    .locals 2
    .param p1    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/downloadlib/b/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/b/b$1;-><init>(Lcom/ss/android/downloadlib/b/b;Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/b/g;)V

    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
