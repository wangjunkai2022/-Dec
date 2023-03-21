.class public Lcom/ss/android/socialbase/downloader/impls/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/a;->c(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/ss/android/socialbase/downloader/impls/a;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->a:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->c(I)Lcom/ss/android/socialbase/downloader/h/c;

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->a:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/a$5;->b:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    return-void
.end method
